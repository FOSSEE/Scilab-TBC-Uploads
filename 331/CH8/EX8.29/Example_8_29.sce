//Caption: Tests of Hypotheses Concerning variances
//One-tailed Chi-square Tests Concerning Single Population Variance
//Test 1: Ho: Var <= k and H1: Var >k
//Example8.29
//Page283

clc;
Var = 1.44; //popualtion variance of the diameter in mm
n = 12;// sample size
S2 = 1.96;//sample variance of the diameter in mm
Alpha = 0.05;
Test = input('Enter the type of test=')
Xchi = ((n-1)*S2)/Var;//chi-square statistic to test the variance
Xchi_stand = Chi_test(Alpha,Test)
disp(Xchi,'The calculated Value chi-square value =')
disp(Xchi_stand,'The table value of chi-square test =')
if (Test==1) then
    if(Xchi< Xchi_stand) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(Xchi > Xchi_stand) then
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
elseif (Test==2) then
    if(Xchi >Xchi_stand) 
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(Xchi<Xchi_stand)
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
end
//Result
//Enter the type of test=1
// 
// The calculated Value chi-square value =   
// 
//    14.972222  
// 
// The table value of chi-square test =   
// 
//    19.675  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted  