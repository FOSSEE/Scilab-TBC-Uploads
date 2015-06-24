//Caption:Goodness of Fit Test
//Example8.37
//Page299
//Ho: The given data follow an assumed distribution
//H1: The given data do not follow the assumed distribution
clear;
clc;
X = [30,31,32,33,34,35,36,37,38,39];//demand in units
o = [13,10,7,10,6,9,12,10,14,9];//Observed frequencies
N = sum(o);//total observed frequencies
n = length(X);//number of demand values
e = N/n; //expected frequency of each
for i = 1:n
    Obser_Chi(i) = ((o(i)-e)^2)/e;
end
Tol_Obser_Chi = sum(Obser_Chi);
Chi_stand = 16.919;
disp(Tol_Obser_Chi,'The observed chi-square statistic=')
disp(Chi_stand,'The table chi-square statistic=')
if (Tol_Obser_Chi>Chi_stand) then
    disp('It falls in the Rejection Region')
    disp('Then Null Hypothesis Ho should be Rejected')
else
    disp('It falls in the Acceptance Region')
    disp('Then Null Hypothesis Ho should be Accepted')
end
//Result
//The observed chi-square statistic=   
// 
//    5.6  
// 
// The table chi-square statistic=   
// 
//    16.919  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted
