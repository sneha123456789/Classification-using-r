# Classification-using-r
Document classification is used to categorize data into one or more classes manually.This closely relates to Machine Learning so that input is taken as a corpus and output is retrieved as a label. This uses Supervised Machine learning techniques. 
Have taken 2 datasets Obama and Romney speeches. Now classification is using done tm./plyr packages.
Step I: Corpus creation:
     Corpus is a large and structured set of texts used for analysis. 
        Two corpuses- one each for contestant Obama and Romney.
        
 Step II: Preprocessing of Corpus
      Now the created corpus needs to clean before we use the data for our analysis. Preprocessing involves removal of punctuations, white spaces, Stop words such as is, 
        the, for, etc.
        
 Step III: Term Document Matrix                                                                                 
      This step involves creation of Term Document Matrix, i.e. matrix which has the   frequency of terms that occur in a collection of documents.
 
 Step IV: Feature Extraction & Labels for the model:
        In this step, we extract input feature words which are useful in distinguishing the docs and classes called labels.
 
 Step V: Train & test data preparation
        In this step, we first randomize the data & then, divide the Data containing Features and Labels into Training (70%) & Test data (30%) before we feed into our Model.
        
 Step VI: Running the model:                                                                                        
 For creating our model using the training data we have separated in the earlier step. We use KNN-model.KNN predictions are based on averaging the outcomes of the K nearest neighbors; for classification problems, a majority of voting is used. The choice of K in regression model is essential in building the KNN model.
 
 Step VII: Test Model                                                                                                  
 Now that the model is created, we have to test the accuracy of the model.
 
 Note: This is being done using KNN model and Naive Bayes Classifier
 Since this Naive Bayes is used because to show accuaracy as well as this
• Naive Bayes is that it only needs a small amount of training data to estimate the parameters        necessary for classification.
• Fast to train (single scan). Fast to classify.
• Not sensitive to irrelevant features
• Handles real and discrete data
• Handles streaming data well.



        
       
        
