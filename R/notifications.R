#' @rdname notifications
#' @title Notifications
#' @description Get/put the notification configuration for a bucket.
#'
#' @template bucket
#' @template dots
#'
#' @return A list containing the notification configuration, if one has been set.
#' @references 
#' \href{http://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETnotification.html}{API Documentation: GET}
#' \href{http://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTnotification.html}{API Documentation: PUT}
#' @export
get_notification <- function(bucket, ...){
    r <- s3HTTP(verb = "GET", 
                bucket = bucket,
                path = "?notification",
                ...)
    if (inherits(r, "aws_error")) {
        return(r)
    } else {
        return(r)
    }
}

#' @rdname notifications
#' @export
put_notification <- function(bucket, ...){
    r <- s3HTTP(verb = "PUT", 
                bucket = bucket,
                path = "?notification",
                ...)
    if (inherits(r, "aws_error")) {
        return(r)
    } else {
        structure(r, class = "s3_bucket")
    }
}
