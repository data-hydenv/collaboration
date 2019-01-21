# unit-tests for our example
source('lib.R')
library(assertthat)

# test the dummy function
assert_that(all(dummy(1, 2)==c(1, 2)))

# test the correlation function
# setup a test dataset, and rename the cols
data <- iris
names(data) <- c('a', 'b', 'c', 'longitude', 'latitude')

# test 1: cols get omitted
#res <- correlation(data)
#assert_that(all(names(res)==c('a', 'b', 'c')))