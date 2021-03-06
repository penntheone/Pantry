package com.fireside.pantry.ui.components;

import com.fireside.pantry.service.UIService;
import com.fireside.pantry.app.model.Recipe;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.layout.*;
import javafx.scene.text.Font;

/**
 * The recipe cards that are listed in the database page
 */
public class RecipeCard extends HBox {
    private final Recipe recipe;

    /**
     * Constructor that sets how the card is displayed on the app
     * @param recipe the specified recipe
     */
    public RecipeCard(Recipe recipe) {
        this.recipe = recipe;

        // Left: Thumbnail ------------------------------------------
        VBox left = new VBox();
        left.setStyle("-fx-padding: 0;" +
                "-fx-border-style: solid inside;" +
                "-fx-border-width: 2;" +
                "-fx-border-insets: 0;" +
                "-fx-border-radius: 0;" +
                "-fx-border-color: black;");

        int dimension = 100;
        left.setPrefSize(dimension, dimension);
        left.setMaxSize(dimension, dimension);
        left.setMinSize(dimension, dimension);

        Image image = recipe.getImage();
        if (image != null) {
            BackgroundImage bImg = new BackgroundImage(
                    image,
                    BackgroundRepeat.NO_REPEAT,
                    BackgroundRepeat.NO_REPEAT,
                    BackgroundPosition.DEFAULT,
                    new BackgroundSize(dimension, dimension,
                            false, false, false, false));
            Background bGround = new Background(bImg);
            left.setBackground(bGround);
        }

        // Padding --------------------------------------------------

        VBox padding = new VBox();
        padding.setMinWidth(15);

        // Right: Details -------------------------------------------
        VBox right = new VBox();
        Label titleNode = new Label(recipe.getTitle());
        titleNode.setFont(new Font("Arial Bold", 18));

        Label categoryNode = new Label(recipe.getCategory());
        categoryNode.setFont(new Font("Arial Bold Italic", 11));
        categoryNode.setPrefHeight(20);

        Label instructionNode = new Label(recipe.getInstructions());
        instructionNode.setFont(new Font("Arial", 10));
        instructionNode.setWrapText(true);

        right.getChildren().addAll(titleNode, categoryNode, instructionNode);

        setMinSize(200, 140);
        setMaxSize(500, 140);
//        setHgrow(this, Priority.ALWAYS);

        setStyle("-fx-padding: 10;" +
                "-fx-border-style: solid inside;" +
                "-fx-border-width: 2;" +
                "-fx-border-insets: 5;" +
                "-fx-border-radius: 5;" +
                "-fx-border-color: black;" +
                "-fx-background-color: white;" +
                "-fx-focus-color: transparent;" +
                "-fx-faint-focus-color: transparent");

        getChildren().addAll(left, padding, right);
        setOnMouseClicked(click -> UIService.handleRecipeSelect(this.getRecipe()));
    }

    /**
     * Retrieves the recipe
     * @return the recipe
     */
    public Recipe getRecipe() {
        return recipe;
    }
}
