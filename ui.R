#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# this two-sided App shows in one page three different types of 
# UI components from the Shiny gallery.
# There are many more, for example the tab page lay-out which would have made this 
# a little more difficult but would have resulted in a nicer UI. 
# Let us see how far we get with this try.

#Rstudio Connect I am not willing to install, So will use RPubs at first.

#adding more documentation?
#Nope; I know that has been discussed in the package lessons but for me it is not clear
#what is exactly meant by that requirement.

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Week 4 Shiny & R-presenter"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        
        sidebarPanel(
            h3( "Show HTML understanding"),
            h4( "--- ------ -----  ----"),
            h6( "Let me just combine some of the course things in one app"),
            #code( "plain text"),
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30
                        ),
            h4( "--- ------ -----  ----"),
            h4( "-Separation for Points thing"),
            numericInput( "numeric", "how many numbers to be plotted?", 
                          value = 100, min=1, max=500, step = 1 ),
            sliderInput( "sliderX", "pick minium and maximum X values", 
                         -100, 100, value = c(-50,50)),
            sliderInput( "sliderY", "pick minium and maximum Y values", 
                         -100, 100, value = c(-50,50)),
            h4( "--- ------ -----  ----"),
            h4( "-Iris dataset table"),
            checkboxInput( "dispIris", "show Iris", value = TRUE ),
            code( "did not figure out how to show/hide a table :("),
            code( "It is at the end of the page, so scroll down!")
        ),

        # Show a plot of the generated distribution 
        mainPanel(
            helpText( "This is helpText!
                      Not quite sure what is meant by the documentation things.
                      Probably adding some help tags in R-markdown?"),
            h4( "First: the Old Faithful thing"),
            plotOutput("distPlot"),
            h4( "Second: some random points"),
            plotOutput( "pointPlot"),
            h4( "Third: some iris table output"),
            tableOutput( "table")
        )
    )
))
