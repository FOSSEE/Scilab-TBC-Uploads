//Caption: Two-tailed Chi-square Test Concerning Single Population Variance
//Example8.31
//Page286
//Test 2: Ho:Var =k; H1:Var#k

clc;
Var = 0.25; //popualtion variance of the weight of the drugs in mg
n = 12;// sample size
S2 = 0.49;//sample variance of the weight of drugs in mg
Alpha = 0.10;
Alpha = Alpha/2;
Xchi = ((n-1)*S2)/Var;//chi-square statistic to test the variance
Xchi_stand = Chi_test(Alpha,[])
disp(Xchi,'The calculated Value chi-square value =')
disp(Xchi_stand,'The table value of chi-square test =')
if ((Xchi < Xchi_stand) &(Xchi< Xchi_stand)) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
else
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
end
//Result
//The calculated Value chi-square value =   
// 
//    21.56  
// 
// The table value of chi-square test =   
// 
//    4.575    19.675  
// 
// It falls in the Rejection Region   
// 
// Then Null Hypothesis Ho should be Rejected 
