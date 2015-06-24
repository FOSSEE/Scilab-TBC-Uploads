//Caption: Linear regression and Time series
//Simple regression
//Example10.9
//Page389
clear;
clc;
x = [1994,1995,1996,1997,1998,1999,2000,2001,2002];//Year
X = x-1998;
y = [10,12,15,27,33,38,44,49,60];//sales
[b,a,sig]=reglin(X,y);//Linear Regression
disp(b,'Regression coefficient b=')
disp(a,'Regression coefficient a=')
D = 2006;
Y = a+b*(D-1998);
disp(Y*100000,'Sales for the year 2006 in lakhs of tons Y=')

//Result
//Regression coefficient b=   
// 
//    6.3333333  
// 
// Regression coefficient a=   
// 
//    32.  
// 
// Sales for the year 2006 in lakhs of tons Y=   
// 
//    8266666.7  