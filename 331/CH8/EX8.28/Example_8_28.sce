//Caption:Two-tailed Test Concerning the Difference between Two Proportions
//Example8.28
//Page281

clc;
n1= 150; //sample size w.r.to City-Y
n2 = 160; //sample size w.r.to City-X
N1 = 135;//number of credit card holders in City-X
N2 = 133;//number of creedit card holders in  City-Y
p1 = N1/n1; // proportion w.r.to City-X
p2 = N2/n2; // proportion w.r.to City-Y
Stdp1_p2 = sqrt(((p1*(1-p1))/n1)+((p2*(1-p2))/n2))
alpha = 0.1;
alpha = alpha/2;
Zp1_p2 = ((p1-p2)-(0))/Stdp1_p2; //calculated normal statistic for (p1-p2)
disp(Zp1_p2,'The calculated normal statistic for (p1-p2)=')
z_Stand = standard_normal_zstat(alpha);//standard normal statistic for (p1-p2)
disp(z_Stand,'The Standard normal statistic for (p1-p2)=')
if ((-z_Stand < Zp1_p2) &(Zp1_p2 < z_Stand)) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
else
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
end
//Result
//The calculated normal statistic for (p1-p2)=   
// 
//    1.7890614  
// 
// The Standard normal statistic for (p1-p2)=   
// 
//    1.64  
// 
// It falls in the Rejection Region   
// 
// Then Null Hypothesis Ho should be Rejected 