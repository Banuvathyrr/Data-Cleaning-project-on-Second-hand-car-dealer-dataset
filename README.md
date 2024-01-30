# Data-cleaning-SQL project-on-second-hand-car-dealer-dataset



**1.	Schema named ‘CARS’ created**



 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/7d5b5741-7be2-4a4f-b201-a0894122c755)  

**2.	Data Discovery**


 
 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/6428f85b-7585-45b1-85e1-03ab5843dd83)


 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/a5f2f183-de42-4c5b-ae1a-8fe6ffd0b898)  

 


**3.	Check datatypes of individual columns of the cars table**


![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/af430faf-558c-4a56-91b2-5c65e830f32d)

![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/f07aca2a-4575-4e4d-bd58-fa7dd3917857)

 
![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/de798a03-57cf-43bc-b3a8-d2e8c6811365)

![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/a1d5b552-452a-471b-beb7-98f8157fa650)


 
No datatype mis-match



**4.	Check for missing rows in each column**

![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/de0de40f-c6c9-45c4-a55c-7deeed89a6b1)

 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/0cac0b35-0dc4-458d-b838-e5cf3fc98a94)


 
No missing rows

**5.	Check for data inconsistencies**

The column ‘torque’ contains data with inconsistency in the units. Therefore, only the numeric value was extracted and separately added in a new column. The unit ‘Nm’ was concatenated to the torque value. 


**a)	Unit mismatch**
 
![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/c58a9fdf-bbe4-4c9c-84fa-99c1c3a91553)
![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/859434ca-39a4-4d4d-b1e5-4ef008e773eb)

 

**6.	Check for duplicate rows**

 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/03e7cd85-e280-4d16-bec3-7204b190a609)


![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/435630da-7da6-412f-addc-79b4ee3ee460)

 
![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/1ad647e4-1a53-4529-8ca2-43db9cd016ac)


 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/f0ee2aa0-1456-4b27-bd7b-5229c39da584)

![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/77407612-f7f4-466f-ae39-f1b037e79e1f)
![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/383c73e6-9984-40ad-9d03-f649cdd17937)
![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/f72aa2f2-34f4-4956-947a-9ef4bf3e5008)
![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/c1e4877c-0cac-4dad-8506-575a528ee05f)


To display table with unique 6738 rows
 
![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/b285f208-d899-4c42-943e-1f40f6674b52)

**b)	Check for data inconsistencies in the unique rows**  


•	km_driven data irrelavant for a single record. Hence it need to be removed   
 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/bbc6d807-b0dd-449d-bc9f-5407ef4f18bf)

 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/2fda2d84-fea3-4cd7-91ca-2180b66c4d76)


A row containing max_power as only unit ‘bhp’ and torque as ‘NULL’ is unnecessary to be included. Hence to be removed.
 
![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/42105f25-e5e0-4c0c-ba3b-41d83aa5dfdd)

 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/f096ec5c-a326-49ef-8e3e-7f979749a1e2)

![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/b89e8520-5c75-45e9-93f2-dfa769b0f372)

 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/daa95c1f-7cd7-45bb-a9c3-a64667f6c1fc)
 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/182a0efe-2f0e-428d-8775-ec9a6d309521)
 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/f4d0ad37-70b4-4aaa-a37d-d7df8cec92a5)

 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/e2e4710d-d464-4660-bc6d-a41dad1e65f9)



Delete column named rownum
 
 ![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/e17d3b96-6fb9-4713-b7c6-a6abba78ae1b)

![image](https://github.com/Banuvathyrr/Data-Cleaning-project-on-Second-hand-car-dealer-dataset/assets/145739539/3aa4f320-1107-48d3-9d3a-6dc41a06c9d7)

