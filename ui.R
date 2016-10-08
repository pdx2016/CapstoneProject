# ui.R

shinyUI(fluidPage(
  h3("Coursera Capstone - Predict the next word!"),
  tags$head(tags$style("#text1, #text2{color: green;
                       font-size: 20px;
                       }"
  )),
  br(),
  br(),
  
  sidebarLayout(
    sidebarPanel(
      h5("Enter a sentence to complete:"),
      textInput("textsource", label = ""),
      hr(),
      p("This app uses an integrated Backoff Model produced for this project to predict the next word."),
      br(),
      p("The app also incorporates Google's Autosuggest for comparison purposes.")
  ),


    
    mainPanel(
      h5("Application Prediction:"),
      hr(),
      h4(textOutput("text1")),
      hr(),
      h5("Google's AutoComplete Suggestion (for comparison purposes only):"),
      hr(),
      h4(textOutput("text2")),
      hr()
    )
  )
))