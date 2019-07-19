#' Plot temperatures
#'
#' @return Line plot
#' @param x x axis
#' @param y y axis
#' 
#' @name plot
#' @rdname plot
#' 
#' @examples 
#' plot(x=time, y=temp)
#' 
#' 
#' @export
plot <- function(x,y){
ggplot2::ggplot(data = retest::temperature, aes(x = {{x}}, y = {{ y }}, group = ID)) + 
  ggplot2::geom_line(aes(colour=ID), show.legend=F) + 
  labs(x="Measurement", y="Temperature") + theme_bw() + 
  theme(panel.border = element_blank(),  
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        axis.line = element_line(colour = "black"))
}
