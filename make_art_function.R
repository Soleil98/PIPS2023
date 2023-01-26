make_art <- function(seed = 12345) {
  set.seed(seed)
  # determining how many datapoints should be used
  n <- sample(c(50:1000), 1)
  # generating random data that can later be plotted
  norm_data <- rnorm(n)
  seq_data <- seq(-5, 55, length.out = n)
  unif_data <- runif(n)
  
  # randomly selecting two samples to make art with
  distributions <- list(norm_data, seq_data, unif_data)
  data_for_art1 <- unlist(distributions[sample(1:3, 1)])
  data_for_art2 <- unlist(distributions[sample(1:3, 1)])
  data_for_art3 <- unlist(distributions[sample(1:3, 1)])
  
  # randomised selection of plot type and color of plot
  type_of_plot1 <- sample(c("l", "p", "b"), 1)
  type_of_plot2 <- sample(c("l", "p", "b"), 1)
  color_of_art1 <-
    sample(c(
      "blue",
      "green",
      "yellow",
      "orange",
      "turquoise",
      "purple",
      "red"
    ),
    1)
  color_of_art2 <-
    sample(c(
      "blue",
      "green",
      "yellow",
      "orange",
      "turquoise",
      "purple",
      "red"
    ),
    1)
  
  # plotting the data and generating art
  plot(
    data_for_art1,
    data_for_art2,
    type = type_of_plot1,
    col = color_of_art1,
    main = "Your Art",
    ylab = "",
    xlab = "",
    axes = FALSE
  )
  for (i in 1:5) {
    lines(
      unlist(distributions[sample(1:3, 1)]),
      unlist(distributions[sample(1:3, 1)]),
      type = type_of_plot2,
      col = color_of_art2
    )
  }
}
