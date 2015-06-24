//Caption: Randomized Complete Block Design
//Example4.4
//Page86
clear;
clc;
Yij = [40,30,55,25,35;45,60,10,22,33;38,55,40,55,28;30,27,32,56,17;45,34,20,34,37];
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
Yi5 = sum(Yij(:,5));
disp(Yi5,'Yi5=')
Y1j = sum(Yij(1,:));
disp(Y1j,'Y1j=')
Y2j = sum(Yij(2,:));
disp(Y2j,'Y2j=')
Y3j = sum(Yij(3,:));
disp(Y3j,'Y3j=')
Y4j = sum(Yij(4,:));
disp(Y4j,'Y4j=')
Y5j = sum(Yij(5,:));
disp(Y5j,'Y5j=');
SS_total = sum(Yij(:,:).^2)-(Y^2)/(m*n);
disp(SS_total,'SS_total=')
SS_team = ((Y1j^2)/n)+((Y2j^2)/n)+((Y3j^2)/n)+((Y4j^2)/n)+((Y5j^2)/n)-(Y^2)/(m*n);
disp(SS_team,'SS_team_leader=')
SS_team_leader = ((Yi1^2)/m)+((Yi2^2)/m)+((Yi3^2)/m)+((Yi4^2)/m)+((Yi5^2)/m)-(Y^2)/(m*n);
disp(SS_team,'SS_team=')
SS_error = SS_total-SS_team_leader-SS_team;
Bet_Treat_DOF = n-1;
disp(Bet_Treat_DOF,'Degrees of freedom Between treatments=')
Bet_Blocks = m-1;
disp(Bet_Blocks,'Degrees of freedom Between Blocks=')
Error = m*n-n-m+1;
disp(Error,'Degrees of freedom With in treatments=')
MSS = [SS_team_leader/Bet_Treat_DOF,SS_team/Bet_Blocks,SS_error/Error];
disp(MSS,'Mean Sum of Squares =');
F_ratio1 = MSS(1)/MSS(3);
F_ratio2 = MSS(2)/MSS(3);
disp(F_ratio1,'Calculated F ratio1 for component treatment- team leader=')
disp(F_ratio2,'Calculated F ratio2 for component block=')
Ftable =  3.01;
disp(Ftable,'Tablw F ratio for the significance level =0.05 and degrees of freedom (4,16)=')
if (F_ratio1 <Ftable) then
    disp('Null Hypothesis should be accepted')
    disp('This means that there is no significant difference in terms of net worth between the team leaders')
else
    disp('Reject Null Hypothesis')
end
if (F_ratio2 <Ftable) then
    disp('Null Hypothesis should be accepted')
    disp('This means that there is no significant difference in terms of net worth between different teams')
else
    disp('Reject Null Hypothesis')
end
//Result
// Yij=   
// 
//    40.    30.    55.    25.    35.  
//    45.    60.    10.    22.    33.  
//    38.    55.    40.    55.    28.  
//    30.    27.    32.    56.    17.  
//    45.    34.    20.    34.    37.  
// 
// Y=   
// 
//    903.  
// 
// Yi1=   
// 
//    198.  
// 
// Yi2=   
// 
//    206.  
// 
// Yi3=   
// 
//    157.  
// 
// Yi4=   
// 
//    192.  
// 
// Yi5=   
// 
//    150.  
// 
// Y1j=   
// 
//    185.  
// 
// Y2j=   
// 
//    170.  
// 
// Y3j=   
// 
//    216.  
// 
// Y4j=   
// 
//    162.  
// 
// Y5j=   
// 
//    170.  
// 
// SS_total=   
// 
//    4118.64  
// 
// SS_team_leader=   
// 
//    368.64  
// 
// SS_team=   
// 
//    368.64  
// 
// Degrees of freedom Between treatments=   
// 
//    4.  
// 
// Degrees of freedom Between Blocks=   
// 
//    4.  
// 
// Degrees of freedom With in treatments=   
// 
//    16.  
// 
// Mean Sum of Squares =   
// 
//    128.56    92.16    202.235  
// 
// Calculated F ratio1 for component treatment- team leader=   
// 
//    0.6356961  
// 
// Calculated F ratio2 for component block=   
// 
//    0.4557075  
// 
// Tablw F ratio for the significance level =0.05 7 degrees of freedom (3,9)=   
// 
//    3.86  
// 
// Null Hypothesis should be accepted   
// 
// This means that there is no significant difference in terms of net worth between the team leaders   
// 
// Null Hypothesis should be accepted   
// 
// This means that there is no significant difference in terms of net worth between different teams   
// 