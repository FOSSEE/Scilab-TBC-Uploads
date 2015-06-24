//Caption:Simple (Single) Exponential Smoothing Method
//Example10.7
//Page385
clear;
clc;
F1 = 600;//forecast of a product for the first week of march
D1 = 550; //Demand of the first week
D2 = 620; //Demand of the second week
alpha = 0.2; //smoothing constant
F2 = F1+alpha*(D1-F1);
disp(F2,'Forecast for the second week of march F2=')
F3 = F2+alpha*(D2-F2);
disp(F3,'Forecast for the third week of march F3=')
//Result
//Forecast for the second week of march F2=   
// 
//    590.  
// 
// Forecast for the third week of march F3=   
// 
//    596.  