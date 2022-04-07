package com.fireside.pantry.service;

import com.fireside.pantry.App;
import com.fireside.pantry.app.control.RecipeManager;
import com.fireside.pantry.ui.DatabaseUI;
import com.fireside.pantry.ui.views.RecipeDetailView;
import com.fireside.pantry.ui.views.RecipeListView;
import com.fireside.pantry.util.objects.Recipe;
import javafx.scene.Scene;

import java.util.List;

public class UIService {

    /**
     * This method will build and return the starting homepage. Right now that is the DatabaseUI. This is the first
     * time the DatabaseUI is instantiated (First call to DatabaseUI.getInstance())
     * @return Scene starting scene
     */
    public static Scene getStartingScene() {
        return DatabaseUI.getInstance().build();
    }

    /**
     * This method returns a default list of recipes for setting up the UI
     * @return List of recipes
     */
    public static List<Recipe> getDefaultRecipes() {
        return RecipeManager.getRangeOfRecipes(25, 35);
    }

    /**
     * This method handles the operations to execute a search and update the ui. This method updates the
     * recipe list view, and the recipe detail view if there are results
     */
    public static void handleSearch() {
        DatabaseUI ui = DatabaseUI.getInstance();
        String search = ui.getSearchBar().getText();
        if (!search.isBlank()) {
            List<Recipe> recipes = RecipeManager.getRecipesByTitle(search);
            ui.setRecipeListView(new RecipeListView(recipes));
            if (recipes.size() > 0)
                ui.setRecipeDetailView(new RecipeDetailView(recipes.get(0)));
            App.updateScene(ui.build());
        }
    }

    /**
     * This method handles the operations to select a recipe and update the ui. This method updates the
     * recipe detail view
     */
    public static void handleRecipeSelect(Recipe recipe) {
        DatabaseUI ui = DatabaseUI.getInstance();
        ui.setRecipeDetailView(new RecipeDetailView(recipe));
        App.updateScene(ui.build());
    }
}
