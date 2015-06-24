//Caption:Goodness of Fit Test
//Example8.38
//Page300
//Ho: The given data follow an assumed distribution
//H1: The given data do not follow the assumed distribution
clear;
clc;
X = [0,1,2,3,4,5,6,7,8,9];//Arrival rate
o = [2,4,8,14,7,5,4,3,2,1];//Observed frequencies
for i = 1:length(X)
    Xo(i)= X(i)*o(i);
end
Xioi = sum(Xo);
N = sum(o);//total observed frequencies
n = length(X);//number of demand values
u = Xioi/N; //mean arrival rate
for i = 1:length(X)
   [P(i),Q(i)]=cdfpoi("PQ",X(i),u) 
end
e = [1.24,4.57,8.46,10.44,9.65,7.14,4.41,2.33,1.08,0.44];//expected frequency of each
for i = 1:n
    Obser_Chi(i) = ((o(i)-e(i))^2)/e(i);
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
//    4.8721893  
// 
// The table chi-square statistic=   
// 
//    16.919  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted   
// 
//-->Obser_Chi
// Obser_Chi  =
// 
//    0.4658065  
//    0.0710941  
//    0.0250118  
//    1.2139464  
//    0.7277202  
//    0.6414006  
//    0.0381179  
//    0.1926609  
//    0.7837037  
//    0.7127273  