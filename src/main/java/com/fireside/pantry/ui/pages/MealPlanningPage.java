package com.fireside.pantry.ui.pages;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.control.Label;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.StackPane;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Font;

import java.util.Stack;


public class MealPlanningPage extends BorderPane {
    private static MealPlanningPage instance;
    //using StackPane in cell
    private TableView leftSide = new TableView<tableCell>();
    private TableView table = new TableView<tableCell>();


    private MealPlanningPage() {

    }

    public BorderPane build() {
        //left side
        TableColumn leftC = new TableColumn<tableCell,String>("Days & Three Meals");
        leftC.setCellValueFactory(new PropertyValueFactory<>("stPane"));
        leftSide.getColumns().addAll(leftC);
        leftSide.setFixedCellSize(100);


        leftSide.setStyle(
                "-fx-border-style: solid outside;" + "-fx-border-insets: 5;" +
                        "-fx-border-width: 2;" +
                        "-fx-border-radius: 5;" +
                        "-fx-border-color: black;"+
                        "-fx-background-color: white;"
        );
        leftSide.setMaxWidth(211);
        leftC.setStyle(
                "-fx-border-style: solid outside;" +
                        "-fx-padding: 5;" +
                        "-fx-border-width: 2;" +
                        "-fx-border-insets: 3.5;" +
                        "-fx-border-radius: 5;" +
                        "-fx-border-color: black;" +
                        "-fx-background-color: white;"
        );

        ObservableList<tableCell> fourCell = FXCollections.observableArrayList();
        StackPane stPane = new StackPane();
        fourCell.add( new tableCell(null, "Breakfast",0,stPane));
        fourCell.add(new tableCell(null, "Lunch",0,stPane));
        fourCell.add(new tableCell(null, "Dinner",0,stPane));
        fourCell.add(new tableCell(null, "Daily Calories",0,stPane));
        leftSide.getItems().addAll(fourCell);



        //right side table
        String[] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
        TableColumn[] colu = new TableColumn[7];

        //loop all in
        for(int i =0 ; i< 7 ;i++){
            TableColumn curr = CreatColumn(days[i]);
            colu[i] = curr;
        }
        table.getColumns().addAll(colu);

        table.setStyle(
                "-fx-border-style: solid outside;" + "-fx-border-insets: 5;" +
                        "-fx-border-width: 2;" +
                        "-fx-border-radius: 5;" +
                        "-fx-border-color: black;" +
                        "-fx-background-color: white;"
        );

        //table resize and value
        table.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);
        leftSide.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);


        //borderpane
        BorderPane pane = new BorderPane();
        BorderPane.setMargin(pane, new Insets(5,5,5,5));
        pane.setCenter(table);
        pane.setLeft(leftSide);

        return pane;
    }



    public static MealPlanningPage getInstance() {
        if (instance == null) instance = new MealPlanningPage();
        return instance;
    }


    //column
    public TableColumn CreatColumn(String str){

        TableColumn<tableCell,StackPane> returnOne = new TableColumn<>(str);
        returnOne.setMinWidth(100);
        returnOne.setStyle(
                "-fx-border-style: solid outside;" +
                        "-fx-padding: 5;" +
                        "-fx-border-width: 2;" +
                        "-fx-border-insets: 3.5;" +
                        "-fx-border-radius: 5;" +
                        "-fx-border-color: black;" +
                        "-fx-background-color: white;"
        );

        return returnOne;
    }


    //table cell
    public class tableCell{
        private ImageView Image;
        private String words;
        private int calorie;
        private StackPane pane;

        public tableCell(ImageView CenterImage, String BottomWords, int TopCalorie, StackPane stPane){
            setCenterImage(CenterImage);
            setBottomWords(BottomWords);
            setTopCalorie(TopCalorie);
            setstPane(stPane);
        }

        public final void setCenterImage(ImageView image) { this.Image = image;  }
        public final void setBottomWords(String words) { this.words = words; }
        public final void setTopCalorie(int calorie) { this.calorie = calorie; }
        public final void setstPane(StackPane stpane){ this.pane = stpane; }

        public ImageView getCenterImage() { return this.Image; }
        public String getBottomWords() { return this.words; }
        public int getTopCalorie() { return this.calorie; }

        public StackPane getstPane(){
            Label Bwords = new Label(this.words);
            Bwords.setFont(new Font("Arial Bold", 18));

            if (this.Image != null || this.calorie != 0) {
                Label Tcalorie = new Label("C:" + this.calorie);
                Tcalorie.setFont(new Font("Arial Bold", 18));

                pane.getChildren().addAll(new Rectangle(100, 50, Color.LIGHTYELLOW),this.Image, Bwords, Tcalorie);
                pane.setAlignment(Bwords, Pos.BOTTOM_LEFT);
                pane.setAlignment(Tcalorie, Pos.TOP_RIGHT);
            }

            else{
                pane.getChildren().addAll(Bwords);
            }

            return pane;
        }
    }
}