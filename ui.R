library(shiny)

shinyUI(
    pageWithSidebar(
         headerPanel(
		 
		 h1('Data Product Project - Shiny App')
		 		 		 
		 ),
         sidebarPanel(
		     numericInput('id1','Numeric input, Sepal Length',0),
			 numericInput('id2','Numeric input, Sepal Width',0),
			 numericInput('id3','Numeric input, Petal Length',0),
			 numericInput('id4','Numeric input, Petal Width',0),
			 submitButton('submit')
			          ),
                         mainPanel(
                           h5('Iris Species Prediction: 
						   This simple Shiny application provides iris species prediction based on the machine learning package caret in R.
                           You just need to input the iris information (sepal length, sepal width, petal length, petal width) in the input textbox on the left
						   and then click the submit button below. This Shiny application will automatically predict the corresponding iris species 
						   and return the results in bottom of the main panel. The prediction algorithm implemented on Shiny server side is decision tree 
						   due to the performance concern of all the web applications. If more complicated algorithm is used such as random forest, 
						   users may need to wait quite some time before they can see the results. Finally, some basic input validation has been applied to ensuure users have input valid information.'),
						   h4('You entered sepal length:'),
						   verbatimTextOutput("oid1"),
						   h4('You entered sepal width:'),
						   verbatimTextOutput("oid2"),
						   h4('You entered petal length:'),
						   verbatimTextOutput("oid3"),
						   h4('You entered petal width:'),
						   verbatimTextOutput("oid4"),
						   h4('Predicted species is:'),
						   verbatimTextOutput("pred")
                           )
                         ))