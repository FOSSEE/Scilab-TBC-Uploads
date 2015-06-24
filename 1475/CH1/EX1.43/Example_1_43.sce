// Example 1.43 A salesman has a 80 percent chance of making a sale to each customer
clc;
clear;
A= 8/10 ; 
B= 8/10;// 
disp((1-((1-A)*(1-B))),"Probab. that salesman will make a sale is P(A+B)=1-P(~A).P(~B)=",1- B, "P(~B)=",1-A,"P(~A)=");
//(1-(1-A)*(1-B)),"P(A+B)=1-P(~A).P(~B)="
