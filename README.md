# Team-4
## Team 4 Project Team:<br>
Archie Anand [Github](https://github.com/archieanand)<br>
Jose Curi [GitHub](https://github.com/joseluiscuri)<br>
Varsha Jha [GitHub](https://github.com/varshajha28)<br>
Will Warriner [GitHub](https://github.com/Sukurudo)<br>

## Team Communication Methodology
Team Communication: Primary use Slack Channel #project-04 for written and up to date communication;<br>
Team Meetings using Zoom
Secondary communiction channel will be: Whatsap and Email if necessry

## Google Slide Project Presentation:
[Google Slides](https://docs.google.com/presentation/d/19eELHUF5ejVCr1qL8Zg_ChHK3Jr896yV9d53X8yzo-M/edit?usp=sharing)

## Tableau Workbook Presentation:
[Tableau](https://public.tableau.com/profile/will.warriner#!/vizhome/OscarsPredictions/OscarWinners)

## ERD

![ERD](Images/ERD-UPDATED.png)

## Topic
Academy Awards(Oscars) is a big event for film industry as the award signify international recognition of excellence for actors, directors, writers, designers, and much more. The awards are given with a variety of different nominees from across different genres. To celebrate the world’s love of art and our love of data, we’ve leveraged the power of automated machine learning to put together our own prediction what movies are more likely to win an oscar in any of the given categories.


## Resources

**Utilizing Movie Data from different Sources:**<br>
The Movie Dataset: https://www.kaggle.com/rounakbanik/the-movies-dataset <br>
Oscars Dataset: https://www.kaggle.com/unanimad/the-oscar-award

## Input Files
From Movie Dataset: 
movies_metadata.csv <br>
academy_awards.csv<br>

Movies_metadata.csv containes information from IMDB and The Movies Database of over 30,000 movies
Academy_Awards.csv containes nominees and winners of all Academy awards from 1927 - 2020


## Technologies Used
- Software: 
- 1. Tablaeu
- 2. Python, Pandas and SciKitLearn
- 3. Postgres and AWS

## Data Cleaning and Exploration Phase
Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python. Both Original databases will be analized and information prepared for a Machine Learning environment. Unecessary data columns will be dropped to ease the transition to a PostresSQL database in preparation of merging both datasets.

Based on our analysis, we determined the following features were important for our result:
**Movies_Metadata.csv**: Budget, Imdb_ID, Orginal Title, Popularity, Revenue, Runtime, Title, Vote Average, Vote Count, Production company, Country, Genre, and Release Year

**academy_awards.csv**: Film, Winner

## Database Storage
We intend to store the data as SQL using Postgres, and we will connect it to AWS environment to share the data.

## Machine Learning Analysis Phase
SciKitLearn is the ML library we'll be using to create a classifier. We are planning on using three different machine learning methologies an comparing the results. We will be using a *Random Forrest model, a Decision Tree Model, and a Logistic Regression Model.*

## Result
We are planning to build the machine learning model which will predict whether the particular movie will win the award in any category.

## Dashboard
We are planning to use Tableau for the dashboard and will be displaying the analysis from all three methologies.

### Interactive Elements:
  The Tableau page will allow you to select between the accuracy report and charts from each of the three methologies:
  Page 1) Welcome Page and Feature Importance
  Page 2) Random Forest Model
  Page 3) Decision Tree Model
  Page 4) Logistic Regression Model
  
# Machine Learning Model
[Machine Learning Report Doc](Resources/Machine%20Learning%20Model.docx) <br>
[Machine Learning Report MD](Resources/Machine_Learning_Model.md)

## Description of preliminary data preprocessing:
# Preprocessing

Before this raw dataset is used for classification, it must be modified so it can be suitable for analysis. Many features are missing from many movies and it must be handled. New features will be created to help analysis. And analyzing the data will determine which features are useful for classification.

## Data Cleaning

In the raw dataset, the movies had a missing budget and revenue. Many of the movies have a null runtime. All these features are necessary for analysis, so the movie is dropped if any of these features are missing.

A movie is also dropped if it is a pornographic film. This is because nature of these movies is extremely different than theatric movies.

Only the movie with status released is included in the movie dataset.

The award dataset was process in the similar fashion by dropping the null value.

**Description of preliminary feature engineering and preliminary feature selection, including their decision-making process:**

## Feature Extraction

Some features are created using existing features. The target variable &quot;winner&quot; was included in the award dataset. The feature &#39;year&#39; is created from release date because a single year is much easier to process compared to an entire date. Also, month and day are not relevant to a movie&#39;s being a winner of the award.

The most significant genre, country, and production company are extracted from their respective lists. This is to improve processing time and because a feature that is a list of categorical labels requires a more complex analysis.

The data type of budget and popularity was converted to the integer type and float respectively so that they are not considered like a categorical data.

Obscure foreign films are not wanted because it will lower the accuracy of the model. Hence, only the movie with country (United States of America) was included. This was not a huge loss because only few movies were removed.

## Feature Selection

We did the feature selection based on three methods to compare the importance of various features available in the cleaned dataset:

Univariate Selection: In order to select the features that have the strongest relationship with the output variable, the chi-squared statistical test was performed using the SelectKBest class of the scikit-learn library.

The results of the Univariate Selection are as follows:

![Selction](/Images/Selection.png)

The second method to generate the score for each feature, an inbuilt class that comes with the Tree based Classifier was used. The following bar chart tells us the top 10 features for the database.

![Features](/Images/top10features.png)

Correlation Matrix with Heatmap shows the correlation between the features and the target variables. The following heatmap shows the correlation coefficient between continuous variables. If a value is too high, the corresponding features are redundant and unnecessary.

![Heat Map](/Images/HeatMap.png)

The graph on the left shows popularity, which seems to be heavily skewed toward the most recent movies. The graph on the right shows that the revenue does not share any pattern with popularity. To counteract that, we limited our scope to movies that were made in 1990 and newer.

In summary, the following features are dropped for not being useful in predicting winner:

- title – alternate title is not relevant
- release\_date – replaced by year
- status – dataset assumes all movies are released
- genres – replaced by single genre
- production\_countries – replaced by single country
- production\_companies – too much variance in companies
- adult – pornographic movies are removed from the dataset

**Description of how data was split into training and testing sets:**

The data was split into the training and testing set using the scikit-learn library.

**Explanation of model choice, including limitations and benefits:**

We ran the dataset via three different machine learning model which yielded the following accuracy.

1. Logistic regression: Logistic regression is promising because it works best when the target variable is a Boolean value, and our target variable, winner, is Boolean. The solver selected for the variation of the logistic regression algorithm was &quot;ibfgs&quot;. The Accuracy for the dataset in this model was 0.79

1. Decision Tree: The decision tree works by setting a division threshold for each feature to predict the target variable. There are two main criteria for determining when to split a tree node, gini and entropy. A decision tree tends to get overfitted when there are no boundaries for tree size. The Accuracy for the dataset in this model was 0.87

1. Random Forest: The random forest algorithm is an ensemble version of the decision tree algorithm, which means that the model uses multiple decision trees. Because of this, the random forest accuracy is expected to be better than the previous decision tree. This algorithm uses the same hyper-parameters as the decision tree except for number of trees (n\_estimators). The random forest accuracy was same as the decision tree accuracy as 0.87

**Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)**

We ran the dataset via three models (Logistic Regression, Decision Tree and Random Forest). There was no change in the model choice.

**Description of how model was trained (or retrained, if they are using an existing model)**

We identified that the release year was skewing the data and so we filtered the data to include the movies that had been released from 1990 and beyond. The accuracy improved in all the model. We ran the dataset via three machine learning models. We did the training of all the model using the best feature only. The Accuracy score increased in case of Logistic Regression; however, the accuracy score remained the same in case of Decision Tree and Random Forest. The result shows that we can get the same accuracy in spite of using a smaller number of data/columns, which will improve the performance.

**Description and explanation of model&#39;s confusion matrix, including final accuracy score**

The chart below shows the accuracy scores for all the models based on the data provided in the model.

| Classification Models | Raw Data | Featured Data | Best Feature |
| --- | --- | --- | --- |
| Logistic Regression | 0.68 | 0.795 | 0.806 |
| Decision Tree | 0.78 | 0.876 | 0.875 |
| Random Forest | 0.77 | 0.879 | 0.879 |

**Confusion Matrix for Random Forest with Featured Data**

![Selction](/Images/confusion.png)

**Additionally, the model obviously addresses the question or problem the team is solving.**

In conclusion the Random Forest was the best model to predict whether the movie will win an award in Oscar or not. The Accuracy showed that the chances of the movie winning the award will be 0.87.

## Conclusion:
The top 5 features that we believe best predict a future Oscar winning movie are vote count, revenue, vote average, runtime, and popularity. We decided the remaining five out of the ten features we selected are too specific to be a fair predictor of award-winning movies. For example, we dropped the features related to specific production companies and genres since awards are not given based on those factors. We noticed that award-winning movies have a positive correlation with the stated five factors, so movies with higher values are more likely to win.



## Further Analysis:

The next steps in the development of this model would be to run a dataset containing movies released in 2020 and compare them to the Oscars that will occur in 2021: Testing this accuracy will allow us to further test the training models.

Further development could be done by combinind data from other datasets that have information not contained in the IMDB. this could find other features not listed that contribute to a movies Oscar success.

Further improvement of the model might be able to allow it to make specific predictions such as a movies chance of winning specific categories of Oscar; This would require implementation of more features such as names of cast and crew members into the Model.

