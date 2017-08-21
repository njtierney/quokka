# Nick's example of when NSE is useful.

airquality <- tibble::as_tibble(airquality)

airquality

library(naniar)

airquality %>% add_prop_miss()

# can refer to variables without needing to use "" or data$var
airquality %>% add_prop_miss(Ozone, Solar.R)

# I can also (somehow, magically), take advantage of dplyr::contains and friends
airquality %>% add_prop_miss(dplyr::contains("o"))

airquality %>% add_prop_miss(dplyr::ends_with("y"))

