# Splitting data into test and training

library(rsample)
set.seed(.projectseed)

PROP_TRAIN <- 0.6

PATIENTS_split <- initial_split(PATIENTS,
                                prop = PROP_TRAIN,
                                strata = NULL)


train_data <- training(PATIENTS_split)
test_data  <- testing(PATIENTS_split)
