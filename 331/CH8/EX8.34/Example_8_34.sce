//Caption:Two-tailed F-test Concerning Equality of Two Population Variances
//Example8.34
//Page291
//Test2: Ho: Var1 =  Var2 ; Var1 # Var2
clc;
n1 = 16; //size of the sample in old industrial estate
n2 = 13; //size of the sample in new industrial estate
Var1 = 225; //Variance in lakhs of old industrial estate
Var2 = 83; //Variance in lakhs of new industrial estate
Alpha = 0.1//significance level
Alpha = Alpha/2;
F = Var1/Var2; // F value
F_stand = F_test(Alpha,[])
disp(F,'The calculated Value F=')
disp(F_stand,'The value of F from F table =')
if ((F < F_stand) &(F< F_stand)) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
else
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
end
//Result
//The calculated Value F=   
// 
//    2.7108434  
// 
// The value of F from F table =   
// 
//    0.403  2.62
//It falls in the Rejection Region   
// 
//Then Null Hypothesis Ho should be Rejected 