
library(shiny)
library(dplyr)
library(ggplot2)
library(nycflights13)

# Define UI for application that explores flight delays
ui <- fluidPage(

  # App title------------
  titlePanel("Flight Delay Explorer"),

  # Sidebar with inputs for carrier, origin, and day, plus toy slider
  sidebarLayout(
    sidebarPanel(

      # Toy example: Slider input for picking a number
      sliderInput("num", "Pick a number",
                  min = 1, max = 100, value = 50),

      selectInput("carrier", "Select Carrier:",
                  choices = unique(flights$carrier),
                  selected = "UA"),

      selectInput("origin", "Select Origin Airport:",
                  choices = unique(flights$origin),
                  selected = "JFK"),

      sliderInput("day", "Select Day of the Month:",
                  min = 1, max = 31, value = 1)


    ),

    # Main panel for outputs
    mainPanel(
      textOutput("num_output"),
      verbatimTextOutput("delay_summary"),
      plotOutput("arr_delay_plot"),
      plotOutput("dest_barplot")
      # Toy example: Output for rendering the double of the picked number

    )
  )
)

# Define server logic required to draw plots, show summaries, and handle the toy examp.
server <- function(input, output) {

  # Reactive expression to filter the flights data based on user input
  filtered_data <- reactive({
    flights %>%
      filter(carrier == input$carrier,
             origin == input$origin,
             day == input$day)
  })

  # Toy example: Render text to show double of the picked number
  output$num_output <- renderText({
    paste("Double of your number is:", input$num * 2)
  })

  # Show summary statistics for the selected data
  output$delay_summary <- renderPrint({
    data <- filtered_data()

    if (nrow(data) == 0) {
      return("No data for this selection.")
    } else {
      data %>%
        summarise(
          flights = n(),
          avg_arr_delay = round(mean(arr_delay, na.rm = TRUE), 2),
          avg_dep_delay = round(mean(dep_delay, na.rm = TRUE), 2),
          avg_air_time = round(mean(air_time, na.rm = TRUE), 2)
        )
    }
  })

  # Plot histogram of arrival delays
  output$arr_delay_plot <- renderPlot({
    data <- filtered_data()

    ggplot(data, aes(x = arr_delay)) +
      geom_histogram(binwidth = 10, fill = "steelblue", color = "white") +
      labs(
        title = paste("Arrival Delays for", input$carrier, "from", input$origin),
        x = "Arrival Delay (min)",
        y = "Number of Flights"
      ) +
      theme_minimal()
  })

  # Plot average arrival delays by destination
  output$dest_barplot <- renderPlot({
    data <- filtered_data()

    data %>%
      group_by(dest) %>%
      summarise(mean_delay = mean(arr_delay, na.rm = TRUE)) %>%
      filter(!is.na(mean_delay)) %>%
      ggplot(aes(x = reorder(dest, mean_delay), y = mean_delay)) +
      geom_col(fill = "#D55E00") +
      coord_flip() +
      labs(title = "Average Arrival Delay by Destination",
           x = "Destination",
           y = "Avg Delay (min)") +
      theme_minimal()
  })


}

# Run the application
shinyApp(ui = ui, server = server)
