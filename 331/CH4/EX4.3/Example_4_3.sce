//Caption: Randomized Complete Block Design
//Example4.3
//Page82
clear;
clc;
Yij = [23,30,25,28;34,20,29,34;45,30,45,40;34,20,35,40];
disp(Yij,'Yij=')
[m,n] = size(Yij);
Y = sum(Yij(:,:));
disp(Y,'Y=')
Yi1 = sum(Yij(:,1));
disp(Yi1,'Yi1=')
Yi2 = sum(Yij(:,2));
disp(Yi2,'Yi2=')
Yi3 = sum(Yij(:,3));
disp(Yi3,'Yi3=')
Yi4 = sum(Yij(:,4));
disp(Yi4,'Yi4=')
Y1j = sum(Yij(1,:));
disp(Y1j,'Y1j=')
Y2j = sum(Yij(2,:));
disp(Y2j,'Y2j=')
Y3j = sum(Yij(3,:));
disp(Y3j,'Y3j=')
Y4j = sum(Yij(4,:));
disp(Y4j,'Y4j=')
SS_total = sum(Yij(:,:).^2)-(Y^2)/(m*n);
disp(SS_total,'SS_total=')
SS_Blocks = ((Y1j^2)/n)+((Y2j^2)/n)+((Y3j^2)/n)+((Y4j^2)/n)-(Y^2)/(m*n);
disp(SS_Blocks,'SS_blocks=')
SS_treatments = ((Yi1^2)/m)+((Yi2^2)/m)+((Yi3^2)/m)+((Yi4^2)/m)-(Y^2)/(m*n);
disp(SS_treatments,'SS_treatments=')
SS_error = SS_total-SS_treatments-SS_Blocks;
disp(SS_error,'SS_error=')
Bet_Treat_DOF = n-1;
disp(Bet_Treat_DOF,'Degrees of freedom Between treatments=')
Bet_Blocks = m-1;
disp(Bet_Blocks,'Degrees of freedom Between Blocks=')
Within_Treat_DOF = m*n-n-m+1;
disp(Within_Treat_DOF,'Degrees of freedom With in treatments=')
MSS = [SS_treatments/Bet_Treat_DOF,SS_Blocks/Bet_Blocks,SS_error/Within_Treat_DOF];
disp(MSS,'Mean Sum of Squares =');
F_ratio1 = MSS(1)/MSS(3);
F_ratio2 = MSS(2)/MSS(3);
disp(F_ratio1,'Calculated F ratio1 for component treatment=')
disp(F_ratio2,'Calculated F ratio2 for component block=')
Ftable =  3.86;
disp(Ftable,'Tablw F ratio for the significance level =0.05 7 degrees of freedom (3,9)=')
if (F_ratio1 <Ftable) then
    disp('Null Hypothesis should be accepted')
    disp('There is no significant difference in terms of weekly sales made between the graduates of different business schools')
else
    disp('Reject Null Hypothesis')
end
if (F_ratio2 <Ftable) then
    disp('Null Hypothesis should be accepted')
    disp('There is no significant difference in terms of weekly sales made between different sections of the showroom')
else
    disp('Reject Null Hypothesis')
    disp('There is significant difference in terms of weekly sales made between different sections of the showroom')
end
//Result
//Yij=   
// 
//    23.    30.    25.    28.  
//    34.    20.    29.    34.  
//    45.    30.    45.    40.  
//    34.    20.    35.    40.  
// 
// Y=   
// 
//    512.  
// 
// Yi1=   
// 
//    136.  
// 
// Yi2=   
// 
//    100.  
// 
// Yi3=   
// 
//    134.  
// 
// Yi4=   
// 
//    142.  
// 
// Y1j=   
// 
//    106.  
// 
// Y2j=   
// 
//    117.  
// 
// Y3j=   
// 
//    160.  
// 
// Y4j=   
// 
//    129.  
// 
// SS_total=   
// 
//    938.  
// 
// SS_blocks=   
// 
//    407.5  
// 
// SS_treatments=   
// 
//    270.  
// 
// SS_error=   
// 
//    260.5  
// 
// Degrees of freedom Between treatments=   
// 
//    3.  
// 
// Degrees of freedom Between Blocks=   
// 
//    3.  
// 
// Degrees of freedom With in treatments=   
// 
//    9.  
// 
// Mean Sum of Squares =   
// 
//    90.    135.83333    28.944444  
// 
// Calculated F ratio1 for component treatment=   
// 
//    3.109405  
// 
// Calculated F ratio2 for component block=   
// 
//    4.6928983  
// 
// Tablw F ratio for the significance level =0.05 7 degrees of freedom (3,9)=   
// 
//    3.86  
// 
// Null Hypothesis should be accepted   
// 
// There is no significant difference in terms of weekly sales made between the graduates of different business schools   
// 
// Reject Null Hypothesis   
// 
// There is significant difference in terms of weekly sales made between different sections of the showroom   
// 