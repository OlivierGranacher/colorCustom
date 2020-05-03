#' Creates palette from base color
#'
#' Palette with same hue and luminance colors, only saturation varies down from start color
#'
#' @param base_color hex code or name
#' @param n number of colors to return
#' @param end fraction of desaturation for end color
#' @param lighten between -1 and 1, positive values for lightening and negtive for darkening
#' @param plot  if TRUE return hclplot
#'
#'
#' @return palette or plot for palette
#' @export
#'
#'
palDesaturate <- function(base_color = "blue", n = 3 , end = .8, plot = F, lighten = 0) {
  pal <- colorspace::desaturate(rep(base_color, n), seq(0, end, length.out = n))
  pal <- colorspace::lighten(pal, amount = lighten, method = "relative")
  if (plot) { return(colorspace::hclplot(pal))
  } else {
      return(pal)
    }
}
