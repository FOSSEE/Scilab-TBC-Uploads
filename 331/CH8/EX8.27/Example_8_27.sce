//Caption:One-tailed Tests Concerning Difference between Two Proportions
//Test 2: Ho: p1-p2>=0 and H1: p1-p2<0
//Example8.27
//Page278

clc;
n1= 110; //sample size of the retail shop-1
n2 = 130; //sample size of the retail shop-2
N1 = 90;//number of days on which sales exceeded the targetted sales in retail shop-1
N2 = 112;//number of days on which sales exceeded the targetted sales in retail shop-2
p1 = N1/n1; // proportion w.r.to shop-1
p2 = N2/n2; // proportion w.r.to shop-2
Stdp1_p2 = sqrt(((p1*(1-p1))/n1)+((p2*(1-p2))/n2))
alpha = 0.1;
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
//The calculated normal statistic for (p1-p2)=   
// 
//  - 0.9100065  
// 
// The Standard normal statistic for (p1-p2)=   
// 
//    1.28  
// 
// It falls in the Acceptance Region   
// 
// Then Null Hypothesis Ho should be Accepted   
// 
//-->p1
// p1  =
// 
//    0.8181818  
// 
//-->p2
// p2  =
// 
//    0.8615385  
// 
//-->Stdp1_p2
// Stdp1_p2  =
// 
//    0.0476443 