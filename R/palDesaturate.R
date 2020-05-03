#' Creates palette from base color
#'
#' Palette with same hue and luminance colors, only saturation varies down from start color
#'
#' @param base_color hex code or name
#' @param n number of colors to return in palette
#' @param max_desaturation fraction of desaturation for end color : 1 is complete desaturation
#' @param lighten between -1 and 1, positive values for lightening and negtive for darkening
#' @param plot  if TRUE return hclplot
#'
#'
#' @return palette or plot for palette
#' @export
#'
#'
palDesaturate <- function(base_color = "blue", n = 3 , max_desaturation = .8, plot = F, lighten = 0) {
  pal <- colorspace::desaturate(rep(base_color, n), seq(0, max_desaturation, length.out = n))
  pal <- colorspace::lighten(pal, amount = lighten, method = "relative")
  if (plot) { return(colorspace::hclplot(pal))
  } else {
      return(pal)
    }
}
