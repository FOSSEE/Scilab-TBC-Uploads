//Caption: Linear regression and Time series
//Simple regression
//Example10.8
//Page388
clear;
clc;
x = [1997,1998,1999,2000,2001,2002];//Year
X = x-2000;
y = [50,60,50,80,72,90];//Demand
[b,a,sig]=reglin(X,y);//Linear Regression
disp(b,'Regression coefficient b=')
disp(a,'Regression coefficient a=')
D = 2008;
Y = a+b*(D-2000);
disp(Y,'Demand for the year 2008 Y=')
disp(Y*100000,'Demand in lakhs tons Y=')
//Result
//Regression coefficient b=   
// 
//    7.6  
// 
// Regression coefficient a=   
// 
//    70.8  
// 
// Demand for the year 2008 Y=   
// 
//    131.6  
// 
// Demand in lakhs tons Y=   
// 
//    13160000.  
//