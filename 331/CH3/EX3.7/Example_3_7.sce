//Caption: Median of Ungrouped data
//Example3.7
//Page45
clear;
clc;
X = [100000,150000,300000,175000,300000,400000];
X_Ascend = gsort(X,'g','i');
disp(X_Ascend)
n = length(X);
if (modulo(n,2)==1) then
    median_X = X((n-1)/2);
else
    median_X = (X(n/2)+X((n+2)/2))/2;
end
disp(median_X,'Median Value of sales Median_X = ');
//Result
//
//    100000.    150000.    175000.    300000.    300000.    400000.  
// 
// Median Value of sales Median_X =    
// 
//    237500. 