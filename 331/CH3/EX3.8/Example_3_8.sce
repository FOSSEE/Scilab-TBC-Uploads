//Caption: Median of grouped data
//Example3.8
//Page45
clear;
clc;
X = [0,8;8,10;10,12;12,14;14,16;16,18;18,20;20,22;22,24];
f = [5,10,15,20,35,40,45,20,15,11];
cum_f = 0;
for i = 1:length(f)
    cum_f = cum_f+f(i);
    sigmaf(i) = cum_f;
end
N = cum_f; //total number of salesman
cen = N/2;
for  i = 1:length(f)
    if ((sigmaf(i)< cen) &(cen< sigmaf(i+1))) then
        L = X(i+1,1);
        Fre = f(i+1);
        F = sigmaf(i)
        C = diff(X(i+1,:));
    end
end
disp(L,'Lower limit of the median class L =')
disp(Fre,'Frequency of the Median class f =')
disp(F,'Cumulative frequency of the previous class F=')
disp(C,'Width of the class interval C=')
Median = L+(((N/2)-F)*C/Fre);
disp(Median*1000,'Median of the travelling allowance of the salesman is Rs =')
//Result
// 
// Lower limit of the median class L =   
// 
//    16.  
// 
// Frequency of the Median class f =   
// 
//    40.  
// 
// Cumulative frequency of the previous class F=   
// 
//    85.  
// 
// Width of the class interval C=   
// 
//    2.  
// 
// Median of the travelling allowance of the salesman is Rs =   
// 
//    17150.  