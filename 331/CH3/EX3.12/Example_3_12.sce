//Caption: Geometric Mean
//Example3.12
//Page50
clear;
clc;
GrowthRate = input('Growth Rate in percentage =');
X = 100+GrowthRate; //Demand of the product
N = length(X)
Geometric_Mean = 1;
for i = 1:N
    Geometric_Mean = Geometric_Mean*X(i);
end
Geometric_Mean =  Geometric_Mean^(1/N);
R = Geometric_Mean-100;
disp('Year period is =',N,'The average growth rate of demand during')
disp(R,'R = ')
disp('percentage')
//Result
//Growth Rate in percentage = [20,30,35,40];
// 
// The average growth rate of demand during   
// 
//    4.  
// 
// Year period is =   
// 
// R =    
// 
//    31.037802  
// 
// percentage 