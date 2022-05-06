package com.fireside.pantry.service;

import com.fireside.pantry.App;
import com.fireside.pantry.app.Session;
import com.fireside.pantry.app.control.IngredientController;
import com.fireside.pantry.app.control.RecipeController;
import com.fireside.pantry.AppScene;
import com.fireside.pantry.app.model.Ingredient;
import com.fireside.pantry.ui.pages.*;
import com.fireside.pantry.ui.pages.users.AdminPage;
import com.fireside.pantry.ui.pages.users.LoginPage;
import com.fireside.pantry.ui.pages.users.ProfilePage;
import com.fireside.pantry.ui.views.AddIngredientView;
import com.fireside.pantry.ui.widgets.TitleBar;
import com.fireside.pantry.ui.widgets.UniversalMenu;
import com.fireside.pantry.app.model.Recipe;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * Class allowing the ui to respond to user actions
 */
public class UIService {

    private static final Logger logger = LoggerFactory.getLogger(UIService.class);

    /**
     * This method handles the operations to execute a search and update the ui. This method updates the
     * recipe list view, and the recipe detail view if there are results
     */
    public static void handleSearch() {
        handlePageSelection("Database");

        AppScene ui = AppScene.getInstance();
        String search = ui.getSearchBar().getText();
        String filter = ui.getSearchBar().getFilters();
        if (search.isBlank()) return;
        List<Recipe> recipes = switch (filter) {
            case "Ingredient"   -> RecipeController.getRecipesByIngredient(search);
            case "Region"       -> RecipeController.getRecipesByRegion(search);
            default             -> RecipeController.getRecipesByTitle(search);
        };
        RecipeService.loadImages(recipes);
        DatabasePage.getInstance().getRecipeListView().populateListView(recipes);
    }

    /**
     * This method handles the operations to select a recipe and update the ui. This method updates the
     * recipe detail view
     */
    public static void handleRecipeSelect(Recipe recipe) {
        RecipeService.loadIngredients(recipe);
        switch (TitleBar.getInstance().getTitle()) {
            case "Database" -> DatabasePage.getInstance().getRecipeDetailView().getDetailCard().refreshDetailCard(recipe);
            case "Advance Search" -> AdvanceSearchPage.getInstance().getRecipeDetailView().getDetailCard().refreshDetailCard(recipe);
        }
    }

    public static void handleIngredientSearch() {
//        List<Ingredient> ingredients = IngredientController.getIngredientByName(
//                AddIngredientView.getInstance().getSearchField().getText());
        List<Ingredient> ingredients = IngredientController.getAllIngredients();
        AddIngredientView.getInstance().populateListView(ingredients);
    }

    /**
     * Closes the menu only if menu is activated.
     */
    public static void closeMenu() {
        UniversalMenu cur = UniversalMenu.getInstance();
        if (cur.isActivated()) {
            cur.setActivated(false);
            cur.getMenuTranslation().setRate(-1);
            cur.getMenuTranslation().play();
        }
    }

    /**
     * Opens the menu.
     */
    public static void openMenu() {
        UniversalMenu cur = UniversalMenu.getInstance();
        cur.setActivated(true);
        cur.getMenuTranslation().setRate(1);
        cur.getMenuTranslation().play();
    }

    /**
     * Switch to the requested page, update the title,
     * then close the menu if needed.
     * @param page the requested page
     */
    public static void handlePageSelection(String page) {
        switch (page) {
            case "Database"         -> AppScene.getInstance().setContent(DatabasePage.getInstance().build());
            case "Advance Search"   -> AppScene.getInstance().setContent(AdvanceSearchPage.getInstance().build());
            case "Meal Planning"    -> AppScene.getInstance().setContent(MealPlanningPage.getInstance().build());
            case "About"            -> AppScene.getInstance().setContent(AboutPage.getInstance().build());

            case "Login"            -> AppScene.getInstance().setContent(LoginPage.getInstance().build());
            case "Admin"            -> AppScene.getInstance().setContent(AdminPage.getInstance().build());
            case "Profile"          -> AppScene.getInstance().setContent(ProfilePage.getInstance().build());

            default -> {
                closeMenu();
                return;
            }
        }
        TitleBar.getInstance().setTitle(page);
        closeMenu();
    }

    /**
     * Sets page selections based on status
     */
    public static void handleProfilePageSelection() {
        if (!Session.getInstance().userAuthorized()) {
            handlePageSelection("Login");
        } else {
            if (Session.getInstance().getAuthorizedUser().isAdmin()) handlePageSelection("Admin");
            else handlePageSelection("Profile");
        }
    }

    /**
     * Takes care of logging in and sets status accordingly
     */
    public static void handleLogin() {
        try {
            AuthService.authorize(LoginPage.getUsername(), LoginPage.getPassword());
            Session.getInstance().getAuthorizedUser();
            handleProfilePageSelection();

        } catch (Exception exception) {
            UIService.logger.error("Invalid login occurred", exception);
            LoginPage.setStatus(exception.getMessage());
        }
    }

    public static void handleLogout() {
        Session.getInstance().setAuthorizedUser(null);
        LoginPage.setStatus("");
        UIService.handlePageSelection("Login");
    }

    public static void handleAdvanceSearch() {
        List<Recipe> recipes = RecipeController.basicAdvancedSearch(
                AdvanceSearchPage.getInstance().getTitleField().getText(),
                AdvanceSearchPage.getInstance().getRegionField().getText(),
                AdvanceSearchPage.getInstance().getTypeField().getText()
        );
        RecipeService.loadImages(recipes);
        AdvanceSearchPage.getInstance().getRecipeListView().populateListView(recipes);
    }
}
