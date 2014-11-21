
library(caret)
library(shiny)
library(e1071)
library(rpart)

data(iris)


pdr<-function(inputvalue){
        modfit_tree<-train(Species~.,method="rpart",data=iris)
       predict(modfit_tree, inputvalue)
		}


library(shiny)
shinyServer(
  function(input,output)
    {dt<-reactive({
	 p<-data.frame(0.0,0.0,0.0,0.0)
	 names(p)<-names(iris)[1:4]
	 p[1,1]<-{as.numeric(input$id1)}
	 p[1,2]<-{as.numeric(input$id2)}
	 p[1,3]<-{as.numeric(input$id3)}
	 p[1,4]<-{as.numeric(input$id4)}
	 p
	 })
	 
	output$oid1<-renderPrint({input$id1})
	output$oid2<-renderPrint({input$id2})
	output$oid3<-renderPrint({input$id3})
	output$oid4<-renderPrint({input$id4})
	
	output$pred<-renderText({
	if ((input$id1==0) & (input$id2==0) & (input$id3==0) & (input$id4==0)) "Please input valid Iris information for prediction."
	else as.character(pdr(dt()))
	})
	
	}
	)