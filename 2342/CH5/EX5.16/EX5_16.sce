// Exa 5.16
format('v',6)
clc;
clear;
close;
// Given data
k1= 0.01;// in mA/V^2
k2= 0.05;// in mA/V^2
V_DD= 5;// in V
V_T1=1;// in V
V_T2=1;// in V
// Analysis for Vi= 5V
Vi= 5;// in V
//I_D1= k1*(V_GS1-V_T1)^2 and I_D2= k2*(2*(V_GS2-V_T2)*V_DS2-V_DS2^2)
// But V_GS2= Vi, V_DS2= Vo, V_GS1= V_DS1= V_DD-Vo
//Vo^2*(k1+k2)-Vo*[2*k1*(V_DD-V_T1)+2*k2*(Vi-V_T2)]+k1*(V_DD-V_T1)^2
A=(k1+k2);
B=-[2*k1*(V_DD-V_T1)+2*k2*(Vi-V_T2)];
C=k1*(V_DD-V_T1)^2;
Vo= [A B C]
Vo= roots(Vo);// in V
Vo= Vo(2);// in V
V_GS2= Vi;// in V
V_DS2= Vo;// in V
V_GS1= V_DD-Vo;// in V
I_D1= k1*(V_GS1-V_T1)^2;// in mA
I_D2= I_D1;// in mA
disp("Part (i) For Vi = 5 V")
disp(Vo,"The output voltage in volts is : ")
disp(I_D1,"The value of I_D1 in mA is : ")
disp(I_D2,"The value of I_D2 in mA is : ")
// Analysis for Vi= 1.5V
Vi= 1.5;// in V
//I_D2= k2*(V_GS2-V_T2)^2 and I_D1= k1*(V_GS1-V_T1)^2
// But V_GS2= Vi, V_DS2= Vo, V_GS1= V_DS1= V_DD-Vo
//k2*(Vi-V_T2)^2= k1*(V_DD-Vo-V_T1)^2 or 
Vo= V_DD-V_T1-sqrt(k2/k1)*(Vi-V_T2);// in V
I_D2= k2*(Vi-V_T2)^2;//in mA
I_D1= I_D2;// in mA
disp("Part (ii) For Vi = 1.5 V")
disp(Vo,"The output voltage in volts is : ")
disp(I_D1,"The value of I_D1 in mA is : ")
disp(I_D2,"The value of I_D2 in mA is : ")






