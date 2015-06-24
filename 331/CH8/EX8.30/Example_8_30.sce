//Caption: Tests of Hypotheses Concerning variances
//Two tailed Chi-square Tests Concerning Single Population Variance
//Test 2: Ho: Var >= k and H1: Var <k
//Example8.30
//Page284

clc;
Var = 0.64; //popualtion variance of the weight of the cement bags in Kg
n = 8;// sample size
S2 = 0.36;//sample variance of the weight of the cement bags in Kg
Alpha = 0.01;
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
//Enter the type of test=2
// 
// The calculated Value chi-square value =   
// 
//    3.9375  
// 
// The table value of chi-square test =   
// 
//    1.239  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted  
