//Caption: Latin Square Design
//Example4.5
//Page89
clear;
clc;
A1 =23;
A2 =34;
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
Yij = [23,40,30,35;20,45,34,40;25,45,34,20;28,30,29,34];
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
SS_section = ((Y1j^2)/n)+((Y2j^2)/n)+((Y3j^2)/n)+((Y4j^2)/n)-(Y^2)/(m*n);
disp(SS_section,'SS_section=')
SS_period = ((Yi1^2)/m)+((Yi2^2)/m)+((Yi3^2)/m)+((Yi4^2)/m)-(Y^2)/(m*n);
disp(SS_period,'SS_period=')
Yij = [A1,A2,A3,A4;B1,B2,B3,B4;C1,C2,C3,C4;D1,D2,D3,D4];
Y1j = sum(Yij(1,:));
disp(Y1j,'Y1j=')
Y2j = sum(Yij(2,:));
disp(Y2j,'Y2j=')
Y3j = sum(Yij(3,:));
disp(Y3j,'Y3j=')
Y4j = sum(Yij(4,:));
disp(Y4j,'Y4j=')
SS_treatments = ((Y1j^2)/n)+((Y2j^2)/n)+((Y3j^2)/n)+((Y4j^2)/n)-(Y^2)/(m*n);
disp(SS_treatments,'SS_treatments=')
SS_error = SS_total-SS_section-SS_treatments-SS_period;
disp(SS_error,'SS_error=')
Bet_Treat_DOF = n-1;
disp(Bet_Treat_DOF,'Degrees of freedom Between treatments=')
Bet_Blocks = m-1;
disp(Bet_Blocks,'Degrees of freedom Between Blocks=')
Error = 6;
disp(Error,'Degrees of freedom With in treatments=')
MSS = [SS_treatments/3,SS_section/3,SS_period/3,SS_error/Error];
disp(MSS,'Mean Sum of Squares =');
F_ratio1 = MSS(1)/MSS(4);
F_ratio2 = MSS(2)/MSS(4);
F_ratio3 = MSS(3)/MSS(4);
disp(F_ratio1,'Calculated F ratio1 for component treatment- business school=')
disp(F_ratio2,'Calculated F ratio2 for component rows-section=')
disp(F_ratio3,'Calculated F ratio3 for component columns-period=')
Ftable = 4.76;
disp(Ftable,'Tablw F ratio for the significance level =0.05 and degrees of freedom (3,6)=')
disp('Component-treatment (business school):')
if (F_ratio1 >Ftable) then
    disp('Null Hypothesis should be rejected')
    disp('This means that there is significant difference in terms of weekly sales made between the graduates of')
    disp('different business schools')
else
    disp('Accept Null Hypothesis')
end
disp('Component-rows(section):')
if (F_ratio2 <Ftable) then
    disp('Null Hypothesis should be accepted')
    disp('This means that there is no significant difference in terms of weekly sales made between different sections')
    disp('of the showroom')
else
    disp('Reject Null Hypothesis')
end
disp('Component-columns (period):')
if (F_ratio3 <Ftable) then
    disp('Null Hypothesis should be rejected')
    disp('This means there is significant difference in terms of weekly sales made between different weeks(period)')
    disp('of the showroom')
else
    disp('Accept Null Hypothesis')
end
//Result
//Yij=   
// 
//    23.    40.    30.    35.  
//    20.    45.    34.    40.  
//    25.    45.    34.    20.  
//    28.    30.    29.    34.  
// 
// Y=   
// 
//    512.  
// 
// Yi1=   
// 
//    96.  
// 
// Yi2=   
// 
//    160.  
// 
// Yi3=   
// 
//    127.  
// 
// Yi4=   
// 
//    129.  
// 
// Y1j=   
// 
//    128.  
// 
// Y2j=   
// 
//    139.  
// 
// Y3j=   
// 
//    124.  
// 
// Y4j=   
// 
//    121.  
// 
// SS_total=   
// 
//    938.  
// 
// SS_section=   
// 
//    46.5  
// 
// SS_period=   
// 
//    512.5  
// 
// Y1j=   
// 
//    136.  
// 
// Y2j=   
// 
//    100.  
// 
// Y3j=   
// 
//    134.  
// 
// Y4j=   
// 
//    142.  
// 
// SS_treatments=   
// 
//    270.  
// 
// SS_error=   
// 
//    109.  
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
//    6.  
// 
// Mean Sum of Squares =   
// 
//    90.    15.5    170.83333    18.166667  
// 
// Calculated F ratio1 for component treatment- business school=   
// 
//    4.9541284  
// 
// Calculated F ratio2 for component rows-section=   
// 
//    0.8532110  
// 
// Calculated F ratio3 for component columns-period=   
// 
//    9.4036697  
// 
// Tablw F ratio for the significance level =0.05 and degrees of freedom (3,6)=   
// 
//    4.76  
// 
// Component-treatment (business school):   
// 
// Null Hypothesis should be rejected   
// 
// This means that there is significant difference in terms of weekly sales made between the graduates of   
// 
// different business schools   
// 
// Component-rows(section):   
// 
// Null Hypothesis should be accepted   
// 
// This means that there is no significant difference in terms of weekly sales made between different sections   
// 
// of the showroom   
// 
// Component-columns (period):   
// 
// Accept Null Hypothesis   
// 