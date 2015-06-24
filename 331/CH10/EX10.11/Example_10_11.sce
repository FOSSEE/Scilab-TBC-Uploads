//Caption: Linear regression and Time series
//Simple regression
//Example10.11
//Page393
clear;
clc;
MeanX = 25;
Meany = 150;
StdX = 2;
StdY = 8;
r = 0.9;
//Estimation of the value of Y when X =10
X = 10;
Y = Meany+r*(StdY/StdX)*(X-MeanX);
disp(Y,'Estimated value of Y when X =10, Y=')
//Estimation of the value of X when Y = 96
Y = 96;
X = MeanX+r*(StdX/StdY)*(Y-Meany);
disp(X,'Estimated value of X when Y =96, X=')
//Result
//Estimated value of Y when X =10, Y=   
// 
//    96.  
// 
// Estimated value of X when Y =96, X=   
// 
//    12.85 