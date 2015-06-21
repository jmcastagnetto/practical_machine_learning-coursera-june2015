# testing dataset
test_set <- read.csv("data/pml-testing.csv.gz", stringsAsFactors = FALSE)

# predictions
load("models/model-rf-cv.rda")
prf <- predict(mod_rf, newdata = test_set)

write.csv(data.frame(problem_id=test_set$problem_id, classe=prf),
          file="prediction/problem_solution.csv")
