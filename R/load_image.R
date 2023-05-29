#' Load an image
#'
#'
#' @param path The path to your image.
#'
#' @return A loaded image
#' @export
#'
#' @examples
#' \dontrun{
#'Path to your image might be: figures/picture.png.
#'This is what you would use: load_image("figures/picture.png")
#' }
#' @import png
#' @import grid
#' @import gridExtra
#' @import here
#' @importFrom grDevices as.raster
load_image <- function(path){
  grid.arrange(rasterGrob(as.raster(readPNG(here(path)))))
}


