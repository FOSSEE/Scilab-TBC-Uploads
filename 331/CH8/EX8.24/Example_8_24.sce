//Caption:Test of Hypotheses concerning Proportions
//One-tailed Tests Concerning Single Proportion
//Test 2: Ho:p>=k and H1:p<k
//Example8.24
//Page272
//Test 2: Ho:p>=k; H1:p<k
clc;
p = 0.15; //15% employees attended duty for less than the total number of working days
q = 1-p;
n = 120; //sample size
pbar = 17/n; //17 attended duty for less than the total number of working days
alpha = 0.05; //significance level
Std = sqrt(p*q/n);
Test = input('Enter the type of test=')
z_stand = standard_normal_zstat(alpha);
disp(z_stand,'The standard normal z statistic=') 
zp = (pbar-p)/Std;
disp(zp,'The calculated value z statistic =')
if (Test==1) then
    if(zp < z_stand) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(zp > z_stand) then
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
elseif (Test==2) then
    if(zp >-z_stand) 
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(zp <-z_stand)
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
end
//Result
//The standard normal z statistic=   
//     1.64  
//The calculated value z statistic =   
//  - 0.255655  
//It falls in the Acceptance Region   
//Then Null Hypothesis Ho should be Accepted   
//-->p
// p  =   0.15  
//-->pbar
// pbar  =     0.1416667  
//-->Std
// Std  =     0.0325960  
//-->zp
// zp  =  - 0.255655  