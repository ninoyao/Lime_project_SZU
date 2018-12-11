##lime for my nnmodel 
library(lime)
explainer <- lime(L1FeatureSet$train$predictors,l1_nnet_mdl)
explanation <- lime::explain (L1FeatureSet$test$predictors[1:20,],explainer, n_features = length(names(L1FeatureSet$test$predictors)))
plot_explanations(explanation)
## gbm
explainergbm <- lime(L0FeatureSet1$test$predictors,gbm_mdl)
explanationgbm <- lime::explain (L0FeatureSet1$test$predictors[5:10,],explainergbm, n_features = length(names(L1FeatureSet$test$predictors)))
plot_explanations(explanationgbm)
##compare
caret::varImp(gbm_mdl,numTrees = NULL)
