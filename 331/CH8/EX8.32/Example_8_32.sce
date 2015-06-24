//Caption: One-tailed F-tests Concerning Two Population Variances
//Example8.32
//Page288
//Test 1: Ho: Var1<=Var2; H1: Var1> Var2

clc;
n1 = 10; //size of the sample taken during night shift
n2 = 15; //size of the sample taken during day shift
Var1 = 64; //Variance in Kg of the sample taken during night shift
Var2 = 40; //Variance in Kg of the sample taken during night shift
Alpha = 0.05//significance level
Test = input('Enter the type of test=')
F = Var1/Var2; // F value
F_stand = F_test(Alpha,Test)
disp(F,'The calculated Value F=')
disp(F_stand,'The value of F from F table =')
if (Test==1) then
    if(F < F_stand) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(F > F_stand) then
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
elseif (Test==2) then
    if(F >-F_stand) 
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(F<-F_stand)
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
end
//Result
//Enter the type of test=1
// 
// The calculated Value F=   
// 
//    1.6  
// 
// The value of F from F table =   
// 
//    2.65  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted 