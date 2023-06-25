# Google Data Analytics Professional Certificate Capstone Project.
## Table of Contents.
1. [Introduction](README.md#introduction)
2. [Background](README.md#background)
3. [Ask](README.md#1ask)
4. [Prepare](README.md#2prepare)
5. [Process](README.md#3process)
6. [Analyze & Share](README.md#4analyze--share)
7. [Act](README.md#5act)

## Introduction
The project is a part of Google Data Analytics Certification course capstone. The scenario involves analysis of the trip data of Cyclistic bike share company.
For the final Capstone project I have chosen Cyclistic bike-share analysis. In this Case study I will be working as junior data analyst for Cyclitic,
a bike sharing company in Chicago.
To find and answer the key business questions, I have followed the six phases of data analysis which was taught in the course which are : Ask, Prepare,
Process ,Analyze ,Share, Act.

## Background
Cyclistic: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself
apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with
disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about
8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to
commute to work each day.

Lily Moreno: The director of marketing and your manager. Moreno is responsible for the development of campaigns
and initiatives to promote the bike-share program. These may include email, social media, and other channels.

### 1.Ask
Identify the business task:
To Identify the usage pattern of Casual and Members  usage and strategize to improve the number of annual memberships by converting 
Casual riders to annual members.

Consider the Key stakeholders:
Lily Monero & the Executive team.

Stakeholders Goal:
Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to
do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why
casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are
interested in analysing the Cyclistic historical bike trip data to identify trends.
	
Key Business Tasks:
* How do annual members and casual riders use Cyclistic bikes differently?
* Why would casual riders buy Cyclistic annual memberships?
* How can Cyclistic use digital media to influence casual riders to become members?.
	
Monero has assigned  the first business task to analyse.

### 2.Prepare.
#### Data Source: 
* Public data from Motivate International Inc. (Divvy Bicycle Sharing Service from Chicago) under this [Licence](https://ride.divvybikes.com/data-license-agreement)
* This Dataset satisfies all the ROCCC Standards.

#### Data Used: 
* Past 12 months of original bikeshare datasets from 01-05-2022 to 01-04-2023 was extracted into 12 CSV files.
* The Dataset consists of following data like ride id, start  and end time ,station name & station id's ,coordinate(latitude/Longitude),
	Member type(Casual/Member)
* Total Numbers of rows after combining all the 12 datasets before cleaning is 5859061.
#### Data Security:
* Rider's personal identifiable information is hidden through tokenization.
* Original files are backed up in a separate folder.
#### Data Limitations:
* As riders’ personal identifiable information is hidden, thus will not be able to connect pass purchases to credit cards numbers to determine
* If casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

### 3.Process.
* Microsoft Excel is used for data gathering and organization.
* Since the combined dataset contains 5 million rows of data, Postgre SQL is employed to clean and transform the data for effective data visualization.
* The data cleaning and transformation process using Postgre SQL involves the following steps:
    * Combined all the 12 datasets using the UNION command and storing the combined data in a temporary table.
        ![image](https://github.com/ananthpy/Cyclistic/assets/61512024/07deefbe-0be4-459c-a62a-4de9c50f43cb)
    * Created two new columns to calculate ride_length and total_minutes.
        ![image](https://github.com/ananthpy/Cyclistic/assets/61512024/dbe19b4c-cb6c-462d-8b20-b760d4496bbf)
    * After combining the data, multiple instances of "NULL" strings appear, These rows of data are considered incomplete and thus need to be removed. This is 
      achieved using the WHERE clause, NOT LIKE operator, and appropriate conditions.4
      
      ![image](https://github.com/ananthpy/Cyclistic/assets/61512024/5ae73def-f41a-4c91-932b-07c79fc7b197)

* Leveraging the advantages of Power BI's built-in functions and DAX measures to create various additional columns for improved visualization.
  By following these steps, the data is effectively cleaned, transformed, and prepared for visualization purposes using Postgre SQL, while Power BI is utilizedto 
  create additional columns that enhance the visualization experience.
### 4.Analyze & Share.
* To initiate the analysis, we have the total number of rides and their distribution between casual and member riders. It is evident that there is a significant majority of member riders compared to casual riders.

    ![image](https://github.com/ananthpy/Cyclistic/assets/61512024/c21e523c-cb51-4b71-a654-1424295972a8)
  
    ![image](https://github.com/ananthpy/Cyclistic/assets/61512024/33458ed1-d7cf-44fe-9222-066883cb4561)
  
* The line chart below illustrates the distribution of total rides throughout the days of the week. For member riders, the line shows a consistent and balanced 
  pattern with steady usage from Monday to Friday, followed by a sharp decline during the weekends. Conversely, casual riders exhibit significantly lower usage 
  during weekdays, but experience a sudden spike in ride frequency over the weekends.

  ![image](https://github.com/ananthpy/Cyclistic/assets/61512024/3719aa60-5313-47b9-a540-663801800ffd)
  
* During our next steps, we analyzed the total ride distribution of three types of Bikes:
    * Classic Bike.
    * Electric Bike.
    * Docker Bike.
* As observed, the most commonly used bike throughout the week is the classic bike, which was used by the majority of riders. The usage of electric bikes remained constant throughout the week, while docked bikes were the least utilized.
	![image](https://github.com/ananthpy/Cyclistic/assets/61512024/8c8d2204-c541-41dd-9e0d-4cd04bd116b3)

* From here, we conducted further analysis on the ride patterns of members and casual riders based on months. The graph below illustrates that the busiest months were June 2022 to September 2022. On the other hand, the period from December 2022 to March 2023 was the least busy, with less than 10% of the riders during that time.
    ![image](https://github.com/ananthpy/Cyclistic/assets/61512024/0587b191-2d84-4b4a-8d64-2d857bfc91f7)
* We calculated the average ride duration in minutes for both casual and member riders using Power BI's DAX measures. Interestingly, the average ride duration for casual riders is higher compared to member riders.
    ![image](https://github.com/ananthpy/Cyclistic/assets/61512024/3c9117de-51cf-46f9-befb-83d189803675)
* Based on the analysis, we have identified the top 5 busiest stations that are utilized by both casual and member riders.
    ![image](https://github.com/ananthpy/Cyclistic/assets/61512024/8beae09e-50ad-46dd-b673-16882325a48a)
* The line chart below illustrates the total number of riders throughout the day. It shows a spike at 8 am in the morning, followed by another spike at 5 pm in the evening, primarily driven by member riders. This indicates that member riders often use the bikes for their daily commute to work. On the other hand, casual riders experience a spike in the evening at 5 pm suggesting that most casual riders utilize the bikes during the evenings.

  ![image](https://github.com/ananthpy/Cyclistic/assets/61512024/a7829b1d-4d8b-4373-a78c-0f34740d3f1d)
  
### 5.Act
Key insights gained from the above visualizations are shared with Moreno, along with the top three recommendations to encourage casual riders to purchase memberships:
* The number of member riders far surpasses the count of casual riders, demonstrating strong commitment and loyalty towards the bike-sharing concept.
* The ride pattern of casual riders remains consistent throughout the week, with spikes on weekends, indicating that most casual riders use the bikes for casual commutes. In contrast, member riders peak on weekdays, suggesting they primarily use bikes for daily commutes to work.
* The average ride duration is shorter for member riders, indicating that they often travel from stations to their workplaces. On the other hand, casual riders have longer average ride durations, as they use the bikes for leisurely or casual trips.
* Member riders show usage spikes at 8 am and 5 pm, suggesting a specific usage pattern aligned with commuting hours. Casual riders, on the other hand, have more evening usage.
* Total ridership peaks from May to October, indicating a preference for riding during warmer weather. Ridership slows down after October due to colder weather conditions.
Top three recommendations to encourage casual riders to purchase memberships are as follows:
  * Conduct a marketing campaign between May and October, offering various promotions like family shared subscriptions and weekly sales to boost sales and incentivize casual riders to become members.
  * Introduce a new membership option that provides flexibility to pause the subscription for a few days. This feature would appeal to casual riders who may want occasional breaks from regular riding, encouraging them to convert to membership.
  * Organize various promotional activities at the top five busiest stations, including free subscriptions for random users and engaging events. This would create excitement and attract casual riders to consider membership.
By implementing these recommendations, the goal is to entice casual riders to become members and increase overall membership and ridership.








					
					
					
								
														




