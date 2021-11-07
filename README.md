# Pewlett-Hackard-Analysis
## Overview of the analysis:
  There are significant number of employees who will reach their retirement ages in the coming years in Pwelett Hackard. In order to prepare for the big wave of retirement, and ensure a smooth transition, a mentorship program is proposed to assist the new employee training. To identify the employees who are articipated to retire in each department and evaluate the eligible employee who can participate the mentorship program. Current employees' information are pulled out accoriding to their emp_no, birth_date, hire-date, and most recent title, and the total number of eligible employees are counted. Another module was created to pull the infomaiton for the current employees born between Jan 1, 1965 and Dec 31, 1965, who can be put into mentorship program. 
  
## Results:
 
 - Current employees born between Jan 1, 1952 and Dec 31, 1955 (current age 56 -59 years old) are anticipated to retire in coming years. Their information is summarized in the format below (a sampling table).

  ![retirement_title](https://user-images.githubusercontent.com/90361056/140659136-fee0a088-08f7-414b-ad31-891bee9255e7.PNG)

 - The total count of the retiring employee with the most recent title is shown in the below table (total around 90,000 employee): The majoirity of retiring employees hold senior titles. 
  
  ![retiring_title](https://user-images.githubusercontent.com/90361056/140659277-ef04c08b-a14c-43ed-b89a-bc068cd33f37.PNG)

- The employees born between Jan 1, 1965 and Dec 31, 1965 with the most recent titles are listed in "mentorship_eligibilty" table. As we can see, most of employees in this table has senior title, which can them eligible for new employee training

  ![mentorship](https://user-images.githubusercontent.com/90361056/140662445-4e2e517d-2a21-4aa1-9c6c-688d6b3b1feb.PNG)

## Summary:
  From the results above, we can see about 90,000 employee will retire in the next few years. And majority of them (about 60%) are at senior level. With this huge number of workforce will leave company in a short few years, company whould get prepared for massive job openings and new employee training. There are a few things compnay should look into in the next step. (1) More infomation should be added into the mentorship table by using SQL queires, including which department they are belonging to, and who are the department manager. (2) A survey can be given to the employees in the retirement list to collect information such as at which age they plan to retire, therefore, company can prepare for the replacement for those postions in the time order.
