//Caption: Linear regression and Time series
//Simple regression
//Example10.10
//Page391
clear;
clc;
x = [10,15,20,25,30,35,40];//R&D expenditure
X = x-25;
y = [25,35,45,55,70,65,85];//Sales
disp('Regression model to estimate the sales(Y) for a given level of R&D activity')
[b,a,sig]=reglin(X,y);//Linear Regression
disp(b,'Regression coefficient b=')
disp(a,'Regression coefficient a=')
Y = a+b*X;
disp(Y,'Forecast of Y=')
Error = y-Y;
disp(Error,'Error y-Y=')
SqrError = (y-Y).^2;
disp(SqrError,'Squared Error=')
MeanSqrErr = sum(SqrError)/length(x);
disp(MeanSqrErr,'Mean Squared Error =')
disp('Regession Model to estimate the R&D expenditure (X) for a desired sales (Y)')
[b1,a1,sig] = reglin(y,x)
disp(b1,'Regression coefficient b=')
disp(a1,'Regression coefficient a=')
X = -2.4416+0.5055*y;
disp(X,'Forecast of X=')
Error = x-X;
disp(Error,'Error x-X=')
SqrError = (x-X).^2;
disp(SqrError,'Squared Error=')
MeanSqrErr = sum(SqrError)/length(x);
disp(MeanSqrErr,'Mean Squared Error =')
//Result
// 
// Regression model to estimate the sales(Y) for a given level of R&D activity   
// 
// Regression coefficient b=   
// 
//    1.8928571  
// 
// Regression coefficient a=   
// 
//    54.285714  
// 
// Forecast of Y=   
// 
//    25.892857    35.357143    44.821429    54.285714    63.75    73.214286    82.678571  
// 
// Error y-Y=   
// 
//  - 0.8928571  - 0.3571429    0.1785714    0.7142857    6.25  - 8.2142857    2.3214286  
// 
// Squared Error=   
// 
//    0.7971939    0.1275510    0.0318878    0.5102041    39.0625    67.47449    5.3890306  
// 
// Mean Squared Error =   
// 
//    16.19898  
// 
// Regession Model to estimate the R&D expenditure (X) for a desired sales (Y)   
// 
// Regression coefficient b=   
// 
//    0.5054496  
// 
// Regression coefficient a=   
// 
//  - 2.4386921  
// 
// Forecast of X=   
// 
//    10.1959    15.2509    20.3059    25.3609    32.9434    30.4159    40.5259  
// 
// Error x-X=   
// 
//  - 0.1959  - 0.2509  - 0.3059  - 0.3609  - 2.9434    4.5841  - 0.5259  
// 
// Squared Error=   
// 
//    0.0383768    0.0629508    0.0935748    0.1302488    8.6636036    21.013973    0.2765708  
// 
// Mean Squared Error =   
// 
//    4.3256141  
// 