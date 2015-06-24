//Caption:Probability of occurrence of 'A' given that 'B' has occurred
//P(A/B)
//Example6.1
//Page 171
clear;
clc;
//A be the event that an employee's monthly salary is more than Rs.15,000
//B be the event that the employee is a regular taker of Alpha Brand Tea
n = 200; //total number of employee's
A_intersec_B = 20; //Alpha Brand tesa takers both in A and B
P_AinterB = A_intersec_B/n;//Probability that Alpha brand tea takers both in A&B
B = 120; //Number of Alpha Brand tea takers
P_B = B/n; // Probility of number of Alpha brand tea takers
P_AB = P_AinterB/P_B;
disp(P_AinterB,'Probability that Alpha brand tea takers both in A&B P(A intersection B)=')
disp(P_B,'Probility of number of Alpha brand tea takers P(B)=')
disp('The probability that employee is having monthly salary more than')
disp(P_AB,'Rs.15,000, if the employee is a regular taker of Alpha brand Tea P(A/B)=')
//Result
//Probability that Alpha brand tea takers both in A&B P(A intersection B)=   
//    0.1  
//Probility of number of Alpha brand tea takers P(B)=   
//    0.6  
//The probability that employee is having monthly salary more than   
//Rs.15,000, if the employee is a regular taker of Alpha brand Tea P(A/B)=   
//   0.1666667  