#' Michael Mallari theme for ggplot2
#'
#' A clean, minimalist ggplot2 theme, inspired by The Economist.
#'
#' @return A ggplot2 theme object
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(wt, mpg)) +
#'   geom_point() +
#'   theme_michaelmallari()

require(ggplot2)

palette <- c(
"#ffffff",
"#eb3300",  # Primary - Pantone 2028 C
"#00a6c8",  # Complement - Pantone 3551 C
"#4cae04", "#9063cd",  # Triadic - Pantone 3501 C, 265 C
"#0084d4", "#00af66",  # Split Complement - Pantone 2184 C, 3405 C
"#ee3831", "#d76b00",  # Analogous - Pantone 3556 C, 2019 C
"#ca3604", "#ff7f41",  # Monochromatic - Pantone 2349 C, 164 C

"#1d252d", "#5b6770", "#c1c6c8",  # Pantone 433 C; Monochromatic - Pantone 431 C, 428 C

"#d7d2cb", "#d9d9d6",  # Pantone Warm Gray 1 C, Cool Gray 1 C

"#f1f0eb", "#d7e7f0",  # The Economist warm gray, blue gray

"#00587c", "#00a6c8", "#3ccbda"  # Pantone 3551 C (middle); Monochromatic - Pantone 308 C (left), 2226 C (right)
)



theme_michaelmallari <- function(background=palette[18]) {  # Alternative background=palette[17]
    font <- "Open Sans"
    ggplot2::theme(
        plot.background = ggplot2::element_rect(fill=background, linewidth=0),
        plot.margin = ggplot2::margin(16, 16, 16, 16, "pt"),
        plot.title = ggplot2::element_text(
            family=font,
            face="bold",
            color=palette[12],
            size=14,
            hjust=0,
            margin=ggplot2::margin(0, 0, 4, 0, "pt")
        ),
      plot.subtitle = ggplot2::element_text(
            family=font,
            color=palette[12],
            size=12,
            hjust=0,
            margin=ggplot2::margin(0, 0, 24, 0, "pt")
        ),
        plot.caption = ggplot2::element_text(
            family=font,
            color=palette[13],
            size=8,
            hjust=0,
            margin=ggplot2::margin(16, 0, 0, 0, "pt")
        ),
        panel.grid.major.x = ggplot2::element_blank(),
        panel.grid.major.y = ggplot2::element_line(color=palette[14], size=0.25, linetype="solid"),
        panel.grid.minor = ggplot2::element_blank(),
        axis.line.x.bottom = ggplot2::element_line(color=palette[12], linewidth=0.75, linetype="solid"),
        legend.position = "top",
        complete=TRUE
    )
}
