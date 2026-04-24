## -----------------------------------------------------------------------------
1 + 2 - 4
6 * 3
2 / 3
3 ^ 3


## ----error = TRUE-------------------------------------------------------------
try({
# comments are not executed
# use comments to explain your code
# <- is used for variable assignment
a <- 5 # leave spaces around operators
a
b <- 3
a ^ b
x <- a ^ b
x
# When you try to use a variable that does not exist you get an error:
my_variable
})


## -----------------------------------------------------------------------------
sqrt(9)

a <- 3.14159
round(a)

ls()


## -----------------------------------------------------------------------------
a <- c(1, 2, 5, 4)
a
# the following operator creates a sequence of values
# since its result is a vector we don't need to wrap it in c()
1:3
# same as:
c(1:3)
# but you can't write:
# 1, 2, 3

# Even single values are vectors:
is.vector(1)

# c() can itself contain vectors
b <- c(2, 2, 2, 2)
v <- c(a, b)


## -----------------------------------------------------------------------------
v
length(v)


## -----------------------------------------------------------------------------
a
b
a + b
a - b
a * b
a / b
a ^ b


## -----------------------------------------------------------------------------
a
c <- c(3, 1)
a + c
d <- c(3, 7, 10)
a + d
# but be careful: you are not always warned


## -----------------------------------------------------------------------------
v <- c(1, 2)
sum(v)
mean(v)


## -----------------------------------------------------------------------------
?round
round(a, digits = 2)


## -----------------------------------------------------------------------------
# argument order and naming
round(3.14159, 2)
round(2, 3.14159)
round(2, x = 3.14159)


## -----------------------------------------------------------------------------
# ?rep
rep(v, times = 3)
# ?seq
seq(from = 1, to = 2.5, by = 0.5)


## -----------------------------------------------------------------------------
a <- c(1, 3, 5)
mode(a)
str(a)
is.numeric(a) # result is a logical vector of length 1

b <- c("p53", "NICN1", "INADL")
b
mode(b)
str(b)
is.character(b)
is.numeric(b)

true_or_false <- c(TRUE, FALSE, FALSE)
str(true_or_false)
# types are important: functions need certain input types
# compare sum(a) and sum(b)


## ----error = TRUE-------------------------------------------------------------
try({
variable <- 5
variable
"variable"
notfound
"notfound"

# to delete a variable use rm()
rm(variable)
variable
})


## -----------------------------------------------------------------------------
a <- c(1, 2, 5, 4)
b <- c(2, 2, 2, 2)
a > 3
a == 5
a == b
a != b
a > b
a < b
a >= b
a <= b


## -----------------------------------------------------------------------------
cool_genes <- c(IME4 = TRUE, PDC1 = FALSE, ADH1 = TRUE)
cool_genes
sum(cool_genes) # implicit coercion: FALSE is 0, TRUE is 1
# fraction of cool genes
sum(cool_genes) / length(cool_genes)
# more coercion examples
-1 < T
as.numeric(cool_genes) # manual coercion
as.character(cool_genes)
as.numeric(c("apples", "oranges")) # not all coercions make sense


## -----------------------------------------------------------------------------
a <- c(1, 3, 5)
mean(a)

b <- c(1, 3, 5, NA)
mean(b)
?mean
mean(b, na.rm = TRUE)

is.na(b)

# shocking! it is possible! :D
1 / 0 # IEEE specification!

log10(-5)


## -----------------------------------------------------------------------------
# NB: quoting names is optional
sizes <- c("Luke" = 180, "Leia" = 170, "Chewbacca" = 250)
str(sizes)
names(sizes)
names(sizes) <- c("Lu", "Le", "Ch")
sizes
unname(sizes)
sizes # forgot to assign!
sizes <- unname(sizes)
sizes


## -----------------------------------------------------------------------------
study_gender <- c("m", "f", "f", "f", "f", "m")
study_gender_f <- factor(study_gender) # factor generates a factor
study_gender_f
str(study_gender_f)


## -----------------------------------------------------------------------------
as.integer(study_gender_f)
levels(study_gender_f)
study_gender_f[1] <- "f" # only predefined values allowed!
study_gender_f
# but: only predefined values are allowed:
study_gender_f[1] <- "M"
study_gender_f


## -----------------------------------------------------------------------------
(a <- factor(c("This", "can", "be")))
(b <- factor(c("really", "annoying")))

c(a, b)
c(as.character(a), as.character(b))

a[b]


## -----------------------------------------------------------------------------
# Where are we? note the '()' - always needed to execute functions
# getwd()

# './' denotes the current directory: this is a relative path
setwd("./data/")

# getwd()

# to see the files in your working directory
dir()

# ../ is an abbreviation for the parent directory
# so with this command we 'go back'
setwd("../")


## ----eval = FALSE-------------------------------------------------------------
# # If you are not sure where a file is located use `file.choose()`. It will open
# # a pop-up dialogue and then print the path of the file in the console.
# file.choose()


## -----------------------------------------------------------------------------
b <- c(1, 3, 5, NA)
mean(b)
# Now ask ChatGPT: Why does this return NA? How can we fix it?


## -----------------------------------------------------------------------------
a <- c(4.1, 3.2, 8.3, 19.4) # digit after the comma is the index
a
a[1] # first index is 1; can also write a[c(1)]
a[3]
a[c(1, 3)]
a[c(3, 1)]
a[c(1, 1, 3, 3)]
a[2:4] # same as a[c(2, 3, 4)] or a[2:4]
length(a)
a[2:length(a)]
a_subset <- a[c(2, length(a))]
a_subset


## -----------------------------------------------------------------------------
a
# negative indices exclude values
a[-c(2, 4)]
a <- c(a, c(1000, 55))
a
max(a)
which.max(a)
a[which.max(a)]
a[-which.max(a)]
# careful with NA values
a[NA]


## -----------------------------------------------------------------------------
grades <- c("john" = 2, "jane" = 3, "brenda" = 1, "andy" = 5)
grades[c("john")]
grades[c("john", "brenda")]
grades[c("john", "john", "brenda")]
# this doesn't work:
grades[-c("andy")]
names(grades)


## -----------------------------------------------------------------------------
a <- c(4.1, 3.2, 8.3, 19.4)
a[c(TRUE, TRUE, FALSE, TRUE)]
# subsetting vector must be the same length as the subsetted vector
# otherwise vector recycling takes place
a[c(TRUE, FALSE)] # vector recycling
b <- seq(from = 1, to = 3, length.out = 6) # a very useful function
b
b > 2
b[b > 2]
a > b
a[a > b]


## -----------------------------------------------------------------------------
foldchanges <- c('IME4' = 3, 'ACT1' = 1.5, 'HOG1' = 2.5, 'AVL9' = 1.1)
pvalues <- c(0.005, 0.002, 0.2, 0.003)

thresh_foldchg <- 2
thresh_pval <- 0.01

foldchanges > thresh_foldchg
foldchanges[foldchanges > thresh_foldchg]

pvalues < thresh_pval
foldchanges[pvalues < thresh_pval]

foldchanges > thresh_foldchg & pvalues < thresh_pval
foldchanges[foldchanges > thresh_foldchg & pvalues < thresh_pval]


## -----------------------------------------------------------------------------
genenames <- names(foldchanges)

genenames %in% c('ACT1', 'IME4')

# why did this happen?
genenames == c('ACT1', 'IME4')

genenames[genenames %in% c('ACT1', 'IME4')]
genenames[!genenames %in% c('ACT1', 'IME4')]


## -----------------------------------------------------------------------------
foldchanges <- c('IME4' = 3, 'ACT1' = 1.5, 'HOG1' = 2.5, 'AVL9' = 1.1)

(foldchanges[3] <- 3.5)
(foldchanges[c(3, 1)] <- c(2.5, 2.8))
(foldchanges['AVL9'] <- 1.0)

pvalues <- c(0.005, 0.002, 0.2, 0.003)

(foldchanges[pvalues > 0.01] <- NA)
(foldchanges[is.na(foldchanges)] <- 0)


## -----------------------------------------------------------------------------
my_first_list <-
  list(
    1:5,
    c(TRUE, FALSE),
    c('hello', 'world')
  )

my_first_list
str(my_first_list)
# run in your console, can't display in this document
# View(my_first_list)
length(my_first_list)


## -----------------------------------------------------------------------------
# let's make a named list
my_named_list <-
    list(
      "first" = "apples", # instead of 'first', can use any other name
      "second" = c(3, 4, 5),
      "third" = T
    )

str(my_named_list)


## -----------------------------------------------------------------------------
my_named_list
my_named_list[["first"]] # returns the actual the element
my_named_list["first"] # returns the same element but wrapped within a list

my_named_list[c(2, 3)]


## -----------------------------------------------------------------------------
my_named_list[["first"]]
my_named_list$first
# doesn't work: we don't have a variable called first
my_named_list[[first]]
my_variable <- "first"
my_named_list[[my_variable]]


## -----------------------------------------------------------------------------
my_named_list
my_named_list$another_elmt <- c(TRUE, TRUE) # you could also use [[]]
my_named_list$first <- NULL
my_named_list


## -----------------------------------------------------------------------------
my_named_list
# the following replaces both the second and third list element: so you need to
# pass a list on the right-hand side! If you don't, R will try to coerce the
# right-hand side using as.list()
my_named_list[c(2, 3)] <- list(c('x', 'y', 'z'), c(88, 99))
my_named_list

# careful!
my_named_list[c(2, 3)] <- c('oh', 'no!')
my_named_list
as.list(c('oh', 'no'))


## -----------------------------------------------------------------------------
forecast <- data.frame(day = c("Mon", "Tue", "Wed", "Thu"), 
                       sky = c("cloudy", "rainy", "sunny", "sunny"), 
                       temp = c(16, 15, 22, 35), 
                       is.nice = c(FALSE, FALSE, TRUE, TRUE))
forecast
str(forecast)
class(forecast)
# View(forecast)


## -----------------------------------------------------------------------------
forecast
# if the output is one-dimensional, it is by default simplified to a vector:
forecast[c(1, 3), "sky"]
forecast[c(1, 3), c(2)]


## -----------------------------------------------------------------------------
forecast[, c("day", "temp")] # keep all rows
forecast[c(1, 2), ] # keep all columns
forecast[-c(2), ] # keep all columns, exclude the second row


## -----------------------------------------------------------------------------
# these two are equivalent - data frames are lists!
forecast$sky
forecast[["sky"]]

# as above, but the data type is preserved (cf. lists)
forecast["sky"]
forecast[c(1, 3)]


## -----------------------------------------------------------------------------
forecast$wind <- c("calm", "storm", "calm", "tornado") # or forecast["wind"]
air_pressure <- c(1000, 1010, 1050, 980)
forecast <- cbind(forecast, air_pressure)
forecast
# delete columns by assigning NULL
forecast$air_pressure <- NULL # deleted columns


## -----------------------------------------------------------------------------
forecast
forecast$temp > 20
# on which days is the temperature above 20 degrees?
forecast$day[forecast$temp > 20]
# what's the average temperature on cloudy days?
mean(forecast$temp[forecast$sky == "cloudy"])
# extract sub data frame where it is both calm and warmer than 20 deg
forecast[forecast$wind == "calm" & forecast$temp > 20, ]


## -----------------------------------------------------------------------------
forecast$day %in% c("Mon", "Wed")
# What is the weather forecast on Monday and Wednesday?
forecast[forecast$day %in% c("Mon", "Wed"), ]
# task for you: why can't you use the == operator here?


## -----------------------------------------------------------------------------
# ?sample
dice <- c(1:6)
sample(x = dice, size = 1)
sample(dice, 1) # order of arguments is important
sample(dice, size = 6)
sample(dice, 6, replace = T)
mean(sample(dice, 100000, replace = T))


## -----------------------------------------------------------------------------
square_it <- function(x) {
  x <- x ^ 2
  return(x)
}

my_potentiator <- function(x, power = 2) {
  x <- x ^ power
  return(x)
}

my_potentiator(c(1:5))


## -----------------------------------------------------------------------------
my_potentiator
x <- 5
my_potentiator(x, power = 3)
x


## -----------------------------------------------------------------------------
z <- 3
zplusone <- function() {
  z <- z + 1
  return(z)
}
zplusone()
z
rm(z)
zplusone() # now it throws an error


## -----------------------------------------------------------------------------
if (TRUE) {
  99
}

if (FALSE) {
  99
}

if (FALSE) {
  99
} else {
  44
}


## -----------------------------------------------------------------------------
odd_or_not <- function(number) {
  if (!is.numeric(number)) {
    stop("Must provide a single number")
  } else if ( (number %% 2) == 0  ) {
    cat("Number is even.")
  } else {
    cat("Number is odd.")
  }
}
odd_or_not(4)
odd_or_not(1)
odd_or_not(7)


## -----------------------------------------------------------------------------
# example: thresholding of values
genex <- c(0.2, 0.5, 0.3, 1.1, 2.2)
my_genex <- data.frame(genex = genex)
my_genex
my_genex$is.expressed <- ifelse(my_genex$genex > 0.25, TRUE, FALSE)
my_genex


## -----------------------------------------------------------------------------
x <- 3:8
for (i in x) {
  cat("i is now ", i, "\n") # \n is the newline symbol
}


## -----------------------------------------------------------------------------
seq(nrow(forecast))
for (i in seq(nrow(forecast))) {
  print(forecast[i, ]) 
}


## -----------------------------------------------------------------------------
# brackets around an expression will evaluate it so you don't have to type 
# cells again after assignment to see its contents
library(readr)

# reminder: "." in Unix denotes the current (= working) directory, so 
# ./data means: the data directory in the current directory
(cells <- read_delim("./data/ImagedCells.csv", delim = ";"))


## ----message = FALSE----------------------------------------------------------
library(tidyverse)
(cells <- read_delim("./data/ImagedCells.csv", delim = ";"))


## -----------------------------------------------------------------------------
ggplot(data = cells, aes(x = gfp_T0, y = mCh_T0))


## -----------------------------------------------------------------------------
ggplot(data = cells, aes(x = gfp_T0, y = mCh_T0)) + 
  geom_point()


## -----------------------------------------------------------------------------
p <- ggplot(data = cells, aes(x = gfp_T0, y = mCh_T0)) + 
  geom_point()

p


## -----------------------------------------------------------------------------
p <- p + labs(x = "GFP at time point T0", y = "mCherry at time point T0", 
  title = "mCherry vs. GFP intensity")

p


## -----------------------------------------------------------------------------
# units are in inches
ggsave(filename = "A_plot_has_been_born.pdf", plot = p, width = 5, height = 5)


## -----------------------------------------------------------------------------
ggplot(data = cells, aes(x = gfp_T0, y = mCh_T0)) + 
  geom_point(aes(colour = treated)) + 
  labs(x = "GFP at time point T0", y = "mCherry at time point T0", 
     title = "mCherry vs. GFP intensity")

# any part of the plotting command can be saved in a variable:
my_label <- labs(x = "GFP at time point T0", y = "mCherry at time point T0", 
  title = "mCherry vs. GFP intensity")

ggplot(data = cells, aes(x = gfp_T0, y = mCh_T0)) + 
  geom_point(aes(colour = treated)) + 
  my_label


## -----------------------------------------------------------------------------
ggplot(data = cells, aes(x = gfp_T0, y = mCh_T0)) + 
  geom_point(aes(colour = treated)) + 
  geom_smooth(method = "lm", se = FALSE) + 
  my_label


## -----------------------------------------------------------------------------
ggplot(data = cells, aes(x = gfp_T0, y = mCh_T0)) + 
  geom_point(aes(colour = treated)) + 
  geom_smooth(aes(colour = treated), method = "lm", se = FALSE) + 
  my_label


## -----------------------------------------------------------------------------
# using inheritance
ggplot(data = cells, aes(x = gfp_T0, y = mCh_T0, colour = treated)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE) + 
  my_label


## -----------------------------------------------------------------------------
cells_wella1 <- cells[cells$Well == "A1", ]
my_lm <- lm(mCh_T0 ~ gfp_T0, data = cells_wella1)
my_lm


## -----------------------------------------------------------------------------
str(my_lm)


## -----------------------------------------------------------------------------
# accessory functions:
coef(my_lm)
head(residuals(my_lm))
summary(my_lm)$r.squared
predict(my_lm, data.frame(gfp_T0 = c(0, 5, 10)))
predict(my_lm, data.frame(gfp_T0 = c(0, 5, 10)), interval = "confidence")


## -----------------------------------------------------------------------------
summary(my_lm)


## -----------------------------------------------------------------------------
summary(my_lm)$r.squared
cor(x = cells_wella1$gfp_T0, y = cells_wella1$mCh_T0) ^ 2
# cor.test() by default uses Pearson's correlation coefficient
cor.test(x = cells_wella1$gfp_T0, y = cells_wella1$mCh_T0)

cor.test(x = cells_wella1$gfp_T0, y = cells_wella1$mCh_T0,
         method = "spearman")


## -----------------------------------------------------------------------------
first_six_cells <- cells[1:6, ]

ggplot(first_six_cells, aes(x = cellID, y = gfp_T0)) + 
  geom_col()


## -----------------------------------------------------------------------------
ggplot(cells, aes(x = Well, y = gfp_T0)) + 
  geom_boxplot()


## -----------------------------------------------------------------------------
ggplot(cells, aes(x = Well, y = gfp_T0)) + 
  geom_violin()

ggplot(cells, aes(x = Well, y = gfp_T0)) + 
  geom_violin() + 
  geom_point(alpha = 0.5)


## -----------------------------------------------------------------------------
# set height to 0!
ggplot(cells, aes(x = Well, y = gfp_T0)) + 
  geom_violin() + 
  geom_point(alpha = 0.5, position = position_jitter(width = 0.1, height = 0))


## -----------------------------------------------------------------------------
ggplot(cells, aes(x = Well, y = gfp_T0)) + 
  geom_violin() + 
  ggbeeswarm::geom_beeswarm(cex = 2)


## -----------------------------------------------------------------------------
ggplot(cells, aes(x = gfp_T0)) + 
  geom_histogram(bins = 20)


## -----------------------------------------------------------------------------
ggplot(cells, aes(x = gfp_T0)) + 
  geom_histogram(aes(y = after_stat(density)), bins = 20)


## -----------------------------------------------------------------------------
ggplot(cells, aes(x = gfp_T0)) + 
  geom_histogram(aes(y = after_stat(density)), bins = 20) + 
  geom_density()

ggplot(cells, aes(x = gfp_T0)) + 
  geom_histogram(aes(y = after_stat(density)), bins = 20) + 
  geom_density(adjust = 4)


## -----------------------------------------------------------------------------
ggplot(cells, aes(x = gfp_T0)) + 
  geom_freqpoly(bins = 20)


## -----------------------------------------------------------------------------
# before: 
cells

# and after:
cells_tidy <- pivot_longer(cells, 
                           cols = c(gfp_T0, mCh_T0, gfp_T1, gfp_T2, gfp_T3, 
                           mCh_T1, mCh_T2, mCh_T3), 
                           names_to = "channel_tpt", 
                           values_to = "int")

cells_tidy


## -----------------------------------------------------------------------------
cells_tidy <- separate(cells_tidy, col = channel_tpt, 
  into = c("channel", "tpt"), sep = "_")
cells_tidy


## -----------------------------------------------------------------------------
cells_tidy <- filter(cells_tidy, channel == "gfp")

p <- ggplot(cells_tidy, aes(x = tpt, y = int, colour = treated))


## -----------------------------------------------------------------------------
p + geom_line()


## -----------------------------------------------------------------------------
p + geom_line(aes(group = cellID))


## -----------------------------------------------------------------------------
library(tidyverse)


## -----------------------------------------------------------------------------
(cells <- read_delim("./data/ImagedCells.csv", delim = ";"))


## -----------------------------------------------------------------------------
select(cells, Well, cellID, gfp_T0, mCh_T0)


## -----------------------------------------------------------------------------
select(cells, Well, cellID, starts_with('gfp'))
select(cells, -gfp_T0)
select(cells, contains('T2'))


## -----------------------------------------------------------------------------
filter(cells, gfp_T1 > 350)
filter(cells, Well == "A1" & gfp_T1 > 350)


## -----------------------------------------------------------------------------
arrange(cells, gfp_T3)
# to sort from greatest to smallest use the `desc()` helper function
arrange(cells, desc(gfp_T3))
cells_arranged <- arrange(cells, gfp_T3)
slice(cells_arranged, 1:2)


## -----------------------------------------------------------------------------
cells %>%
    arrange(gfp_T3) %>% 
    slice(1:2)


## -----------------------------------------------------------------------------
background <- 100

cells %>%
  mutate(gfp_T0_bgsub = gfp_T0 - background) %>%
  select(Well, cellID, gfp_T0, gfp_T0_bgsub)


## -----------------------------------------------------------------------------
cells %>% 
  select(Well, cell_area) %>% 
  filter(Well == "A1") %>%
  arrange(desc(cell_area)) %>% 
  slice(1)


## -----------------------------------------------------------------------------
cells %>% 
  select(Well, cell_area) %>% 
  group_by(Well) %>%
  filter(cell_area == max(cell_area))


## -----------------------------------------------------------------------------
# dplyr will understand both -ise and -ize spellings (summarise and summarize)
cells %>% 
  group_by(Well) %>%
  summarise(gfp_T0 = mean(gfp_T0, na.rm = TRUE), 
            mCh_T0 = mean(mCh_T0, na.rm = TRUE))


## -----------------------------------------------------------------------------
library(tidyverse)

df <- tibble(
  col1 = c(1, 3, 7, 2.8), 
  col2 = c(80, 82, 89.7, 60.8), 
  col3 = c(20, 22, 20.3, NA)
)

mean_col1 <- mean(df$col1)
mean_col2 <- mean(df$col2)
mean_col3 <- mean(df$col3)


## -----------------------------------------------------------------------------
map(df, mean)


## -----------------------------------------------------------------------------
map(df, mean, na.rm = TRUE)


## -----------------------------------------------------------------------------
map_dbl(df, mean, na.rm = TRUE)


## -----------------------------------------------------------------------------
map(df, function(x) {
  x_standardised <- (x - mean(x, na.rm = TRUE)) / sd(x, na.rm = TRUE)
  return(x_standardised)
})


## -----------------------------------------------------------------------------
map_dfc(df, function(x) {
  x_standardised <- (x - mean(x, na.rm = TRUE)) / sd(x, na.rm = TRUE)
  return(x_standardised)
})


## -----------------------------------------------------------------------------
mean_col1 <- mean(df$col1)
sd_col1 <- sd(df$col1)
max_col1 <- max(df$col1)
min_col1 <- min(df$col1)


## -----------------------------------------------------------------------------
my_functions_of_interest <- list(mean, sd, max, min)
map(my_functions_of_interest, function(f) {
  f(df$col1)
})


## -----------------------------------------------------------------------------
cells_wella1 <- cells[cells$Well == "A1", ]
my_lm <- lm(mCh_T0 ~ gfp_T0, data = cells_wella1)
my_lm

summary(my_lm)


## -----------------------------------------------------------------------------
str(my_lm)


## -----------------------------------------------------------------------------
# accessory functions:
coef(my_lm)
head(residuals(my_lm))
summary(my_lm)$r.squared


## -----------------------------------------------------------------------------
summary(my_lm)$r.squared
cor(x = cells_wella1$gfp_T0, y = cells_wella1$mCh_T0) ^ 2
# cor.test() by default uses Pearson's correlation coefficient
cor.test(x = cells_wella1$gfp_T0, y = cells_wella1$mCh_T0)

cor.test(x = cells_wella1$gfp_T0, y = cells_wella1$mCh_T0,
         method = "spearman")


## -----------------------------------------------------------------------------
plot(x = cells_wella1$gfp_T0, y = cells_wella1$mCh_T0)
abline(my_lm, col = "red")

p <- ggplot(cells_wella1, aes(x = gfp_T0, y = mCh_T0)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = F)
p


## -----------------------------------------------------------------------------
rnorm(3)
rbinom(n = 1, size = 3, prob = 0.5)
rt(3, df = 2)


## -----------------------------------------------------------------------------
v <- data.frame(x = rnorm(10000))
mean(v$x)
sd(v$x)

ggplot(v, aes(x = x)) + 
  geom_histogram(aes(y = ..density..)) + 
  geom_density(colour = "red")


## -----------------------------------------------------------------------------
dnorm(0)


## -----------------------------------------------------------------------------
pnorm(0)


## -----------------------------------------------------------------------------
qnorm(0.5)
qnorm(0.975)


## -----------------------------------------------------------------------------
samplesize <- 3
my_tstats <- replicate(10000, rnorm(samplesize), simplify = FALSE)
my_tstats <- tibble(sample = my_tstats)
head(my_tstats)


## -----------------------------------------------------------------------------
my_tstats$mean <- map_dbl(my_tstats$sample, mean)

my_tstats$sem <- map_dbl(my_tstats$sample, function(x) {
  sd(x) / sqrt(length(x))
})


## -----------------------------------------------------------------------------
get_tstatistic <- function(x) {
  sqrt(length(x)) * (mean(x)/sd(x))
}

my_tstats$tstatistic <- map_dbl(my_tstats$sample, get_tstatistic)


## -----------------------------------------------------------------------------
my_tstats$rt <- rt(10000, df = samplesize)

my_tstats

ggplot(my_tstats) + 
  geom_histogram(aes(x = rt), alpha = 0.5, binwidth = 0.1, fill = "red") + 
  geom_histogram(aes(x = tstatistic), alpha = 0.5, binwidth = 0.1, 
    fill = "grey") + 
  coord_cartesian(xlim = c(-5, 5)) + 
  theme_bw()


## -----------------------------------------------------------------------------
t_quantile <- qt(0.975, df = samplesize-1)


## -----------------------------------------------------------------------------
my_tstats$lower <- my_tstats$mean - t_quantile * my_tstats$sem
my_tstats$upper <- my_tstats$mean + t_quantile * my_tstats$sem

my_tstats


## -----------------------------------------------------------------------------
my_tstats$contains_mean <- my_tstats$lower < 0 & my_tstats$upper > 0
sum(my_tstats$contains_mean) / nrow(my_tstats)

