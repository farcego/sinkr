#' Define a new range for a numeric
#' 
#' The \code{newRange} function scales a numeric vector to a new range as defined by 
#' minimum and maximum extreme values.
#' 
#' @param x a numeric vector
#' @param new.min numeric value of new minimum range value
#' @param new.max numeric value of new maximum range value
#' 
#' @examples
#' y <- runif(100, min=0, max=2)
#' y2 <- newRange(y, new.min=0, new.max=1)
#' plot(y, t="l")
#' lines(y2, col=2)
#' 
#' plot(y, y2)
#' 
#' @export
#'
newRange <- function(x, new.min=0, new.max=1){
	ranx <- range(x, na.rm=TRUE)
	px <- (x-ranx[1])/(ranx[2]-ranx[1])
	res <- new.min+((new.max-new.min)*px)
	res
}

