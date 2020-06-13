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
