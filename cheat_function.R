cheat <- function(question_number = "Q3.1.3") {
  if (is.character(question_number == FALSE)) {
    stop("question_number must be a string (e.g., 'Q3.1.3')")
  }
  if (question_number == "Q3.1.3") {
    writeLines("The correct solution to Q3.1.3 is: \n
    library(ggplot2) \n
    library(titanic) \n
    ggplot(titanic_train, aes(x = Sex, fill = factor(Survived, labels = c('dead', 'alive')))) + \n
    geom_bar() + \n
    labs(fill = 'How did it go?')) \n
    }") 
  }
  else if (question_number == "Q3.1.7") {
    writeLines("The correct solution to Q3.1.7 is: \n 
    ggplot(ChickWeight, aes(Time, weight)) + \n
    geom_smooth(method = lm)")
  }
  else if (question_number == "Q3.1.11") {
    writeLines("The correct solution to Q3.1.11 is: \n 
    library(gganimate) \n
    library(cranlogs) \n
    data_caret <- cran_downloads(packages = 'caret', from = '2014-07-01', to = '2022-10-01') \n
    data_tidymodels <- cran_downloads(packages = 'tidymodels', from = '2014-07-01', to = '2022-10-01')")
  }
  else {
    stop("Please enter one of the following exercise numbers: Q3.1.3, Q3.1.7 and Q3.1.11")
  }
}