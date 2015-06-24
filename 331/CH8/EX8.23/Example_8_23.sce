//Caption:Test of Hypotheses concerning Proportions
//One-tailed Tests Concerning Single Proportion
//Test 1: Ho:p<=k and H1:p>k
//Example8.23
//Page271

clc;
p = 0.85; //85% of the assemblies coming out of the assembly line will be free from
//missing components
q = 1-p;
n = 50; //sample size
pbar = 44/n; //44 assemblies are free from missing components
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
//Enter the type of test=1
// 
// The standard normal z statistic=   
// 
//    1.64  
// 
// The calculated value z statistic =   
// 
//    0.5940885  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted   
// 
//-->p
// p  =   0.85  
// 
//-->pbar
// pbar  =0.88  
// -->Std
// Std  =   0.0504975  