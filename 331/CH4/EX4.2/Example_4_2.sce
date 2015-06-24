//Caption: Completely Randomized Design
//Example4.2
//Page78
clear;
clc;
Yij = [80,70,65,90;90,60,50,89;96,55,58,85;85,85,55,95;70,90,40,80];
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
Bet_Treat_DOF = n-1;
disp(Bet_Treat_DOF,'Degrees of freedom Between treatments=')
Within_Treat_DOF = m*n-n;
disp(Within_Treat_DOF,'Degrees of freedom With in treatments=')
MSS = [SS_treatments/Bet_Treat_DOF,SS_error/Within_Treat_DOF];
disp(MSS,'Mean Sum of Squares =');
F_ratio = MSS(1)/MSS(2);
disp(F_ratio,'Calculated F ratio =')
Ftable =  3.24;
disp(Ftable,'Tablw F ratio for the significance level =0.05 7 degrees of freedom (3,16)=')
if (F_ratio<Ftable) then
    disp('Null Hypothesis should be accepted')
else
    disp('Reject Null Hypothesis')
end
//Result
//Yij=   
// 
//    80.    70.    65.    90.  
//    90.    60.    50.    89.  
//    96.    55.    58.    85.  
//    85.    85.    55.    95.  
//    70.    90.    40.    80.  
// 
// Y=   
// 
//    1488.  
// 
// Y1=   
// 
//    421.  
// 
// Y2=   
// 
//    360.  
// 
// Y3=   
// 
//    268.  
// 
// Y4=   
// 
//    439.  
// 
// SS_total=   
// 
//    5368.8  
// 
// SS_treatments=   
// 
//    3570.  
// 
// SS_error=   
// 
//    1798.8  
// 
// Degrees of freedom Between treatments=   
// 
//    3.  
// 
// Degrees of freedom With in treatments=   
// 
//    16.  
// 
// Mean Sum of Squares =   
// 
//    1190.    112.425  
// 
// Calculated F ratio =   
// 
//    10.584834  
// 
// Tablw F ratio for the significance level =0.05 7 degrees of freedom (3,16)=   
// 
//    3.24  
// 
// Reject Null Hypothesis   
 