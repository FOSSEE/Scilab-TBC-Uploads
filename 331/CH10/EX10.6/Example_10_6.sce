//Caption:Weighted Moving Average Method
//Example10.6
//Page383
clear;
clc;
Dt = [80,90,70,100,70,90];//Demand of a product
t = length(Dt);// months
W = [0.2,0.3,0.5];//weights
//Three months weighted moving averages
for i = 3:t
    Wt(i-2) = W*Dt([(i-2):i])' ;
    WtMA(i-2) = Wt(i-2)/sum(W)
end
disp(WtMA,'Three Months weighted moving average Mt=')
for i = 1:length(Wt)-1
    Ft(i) = WtMA(i);
    et(i) = Dt(i+3)-Ft(i);
end
disp(Ft,'Forecast Ft=')
disp(et,'Error et=')
MAD = sum(abs(et(:)))/length(et);
disp(MAD,'Mean Absolute Deviation MAD=')
MFE = sum(et(:))/length(et);
disp(MFE,'Mean Forecast Error MFE=')
//Result
//Three Months weighted moving average Mt=   
// 
//    78.  
//    89.  
//    79.  
//    86.  
// 
// Forecast Ft=   
// 
//    78.  
//    89.  
//    79.  
// 
// Error et=   
// 
//    22.  
//  - 19.  
//    11.  
// 
// Mean Absolute Deviation MAD=   
// 
//    17.333333  
// 
// Mean Forecast Error MFE=   
// 
//    4.6666667  