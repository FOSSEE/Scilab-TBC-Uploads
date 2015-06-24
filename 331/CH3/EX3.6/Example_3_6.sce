//Caption: Medain of ungrouped data
//Example3.6
//Page45
clear;
clc;
X = [100000,150000,300000,75000,175000];
X_Ascend = gsort(X,'g','i');
disp(X_Ascend)
n = length(X);
if (modulo(n,2)==1) then
    median_X = X((n-1)/2);
else
    median_X = (X(n/2)+X((n+1)/2))/2;
end
disp(median_X,'Median Value of sales Median_X = ');
//Result
//  75000.    100000.    150000.    175000.    300000.  
// 
// Median Value of sales Median_X =    
// 
//    150000.