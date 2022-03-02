#' Creates common colors
#'
#' @param vars a vector containing all the categories
#' @param color_pal a character with name of color pallete from RColorBrewer

common_colors <- function(vars, color_pal = "Set2"){

  require(RColorBrewer)

  max_colors <- brewer.pal.info[color_pal,"maxcolors"]


  unique_vars <- unique(vars)
  n_uniques <- length(unique_vars)

  colors <- colorRampPalette(brewer.pal( max_colors, color_pal))(n_uniques)

  names(colors)<- unique_vars

  return(colors)

}
