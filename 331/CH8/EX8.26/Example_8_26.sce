//Caption:One-tailed Tests Concerning Difference between Two Proportions
//Test 1: Ho: p1-p2<=0 and H1: p1-p2>0
//Example8.26
//Page277

clc;
n1= 120; //sample size of the vendor-1
n2 = 100; //sample size of the vendor-2
N1 = 15;//number of defective pieces in the sample-1
N2 = 11;//number of defective pieces in the sample-2
p1 = N1/n1; // proportion w.r.to vendor-1
p2 = N2/n2; // proportion w.r.to vendor-2
Stdp1_p2 = sqrt(((p1*(1-p1))/n1)+((p2*(1-p2))/n2))
alpha = 0.05;
Test = input('Enter the type of test=')
Zp1_p2 = ((p1-p2)-(0))/Stdp1_p2; //calculated normal statistic for (p1-p2)
disp(Zp1_p2,'The calculated normal statistic for (p1-p2)=')
z_Stand = standard_normal_zstat(alpha);//standard normal statistic for (p1-p2)
disp(z_Stand,'The Standard normal statistic for (p1-p2)=')
if (Test==1) then
    if(Zp1_p2 < z_Stand) then
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(Zp1_p2 > z_Stand) then
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
elseif (Test==2) then
    if(Zp1_p2 >-z_Stand) 
        disp('It falls in the Acceptance Region')
        disp('Then Null Hypothesis Ho should be Accepted')
     elseif(Zp1_p2<-z_Stand)
        disp('It falls in the Rejection Region')
        disp('Then Null Hypothesis Ho should be Rejected')
    end
end
//Result
//Enter the type of test=1
// 
// The calculated normal statistic for (p1-p2)=   
// 
//    0.3449910  
// 
// The Standard normal statistic for (p1-p2)=   
// 
//    1.64  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted   
// 
//-->p1
// p1  =
// 
//    0.125  
// 
//-->p2
// p2  =
// 
//    0.11  
// 
//-->Stdp1_p2
// Stdp1_p2  =
// 
//    0.0434794  