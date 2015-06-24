//Caption: Completely Randomized Design
//Example4.1
//Page75
clear;
clc;
A1 = 23;
A2 = 34;
A3 = 45;
A4 = 34;
B1 = 30;
B2 = 20;
B3 = 30;
B4 = 20;
C1 = 35;
C2 = 29;
C3 = 25;
C4 = 45;
D1 = 28;
D2 = 40;
D3 = 40;
D4 = 34;
Yij = [A1,B1,C1,D1;A2,B2,C2,D2;A3,B3,C3,D3;A4,B4,C4,D4];
disp(Yij,'Yij=')
[m,n] = size(Yij);
Y = sum(Yij(:,:));
disp(Y,'Y=')
Y1 = sum(Yij(:,1));
disp(Y1,'Y1=')
Y2 = sum(Yij(:,2));
disp(Y2,'Y2=')
Y3 = sum(Yij(:,3));
disp(Y3,'Y3=')
Y4 = sum(Yij(:,4));
disp(Y4,'Y4=')
SS_total = sum(Yij(:,:).^2)-(Y^2)/(m*n);
disp(SS_total,'SS_total=')
SS_treatments = ((Y1^2)/m)+((Y2^2)/m)+((Y3^2)/m)+((Y4^2)/m)-(Y^2)/(m*n);
disp(SS_treatments,'SS_treatments=')
SS_error = SS_total-SS_treatments;
disp(SS_error,'SS_error=')
Bet_Treat_DOF = m-1;
disp(Bet_Treat_DOF,'Degrees of freedom Between treatments=')
Within_Treat_DOF = m*n-m;
disp(Within_Treat_DOF,'Degrees of freedom With in treatments=')
MSS = [SS_treatments/Bet_Treat_DOF,SS_error/Within_Treat_DOF];
disp(MSS,'Mean Sum of Squares =');
F_ratio = MSS(1)/MSS(2);
disp(F_ratio,'Calculated F ratio =')
Ftable =  3.49;
disp(Ftable,'Tablw F ratio for the significance level =0.05 7 degrees of freedom (3,12)=')
if (F_ratio<Ftable) then
    disp('Null Hypothesis should be accepted')
else
    disp('Reject Null Hypothesis')
end
//Result
//Yij=   
// 
//    23.    30.    35.    28.  
//    34.    20.    29.    40.  
//    45.    30.    25.    40.  
//    34.    20.    45.    34.  
// 
// Y=   
// 
//    512.  
// 
// Y1=   
// 
//    136.  
// 
// Y2=   
// 
//    100.  
// 
// Y3=   
// 
//    134.  
// 
// Y4=   
// 
//    142.  
// 
// SS_total=   
// 
//    938.  
// 
// SS_treatments=   
// 
//    270.  
// 
// SS_error=   
// 
//    668.  
// 
// Degrees of freedom Between treatments=   
// 
//    3.  
// 
// Degrees of freedom With in treatments=   
// 
//    12.  
// 
// Mean Sum of Squares =   
// 
//    90.    55.666667  
// 
// Calculated F ratio =   
// 
//    1.6167665  
// 
// Tablw F ratio for the significance level =0.05 7 degrees of freedom (3,12)=   
// 
//    3.49  
// 
// Null Hypothesis should be accepted  