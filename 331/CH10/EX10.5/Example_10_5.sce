//Caption: Forecasting
//Simple Moving Average Method
//Example10.5
//Page381
clear;
clc;
Dt = [24,30,27,24,39,45,42,51];//Demand Di
n = length(Dt);//Month (t)
//Three months moving average
for i = 3:n
   Mt(i-2) =  mean(Dt([(i-2):i]));
end
disp(Mt,'Three Months moving average Mt=')
for i = 1:length(Mt)-1
    Ft(i) = Mt(i);
    et(i) = Dt(i+3)-Ft(i);
end
disp(Ft,'Forecast Ft=')
disp(et,'Error et=')
MAD = sum(abs(et(:)))/length(et);
disp(MAD,'Mean Absolute Deviation MAD=')
MFE = sum(et(:))/length(et);
disp(MFE,'Mean Forecast Error MFE=')
//Result
// Three Months moving average Mt=   
// 
//    27.  
//    27.  
//    30.  
//    36.  
//    42.  
//    46.  
// 
// Forecast Ft=   
// 
//    27.  
//    27.  
//    30.  
//    36.  
//    42.  
// 
// Error et=   
// 
//  - 3.   
//    12.  
//    15.  
//    6.   
//    9.   
// 
// Mean Absolute Deviation MAD=   
// 
//    9.  
// 
// Mean Forecast Error MFE=   
// 
//    7.8   
