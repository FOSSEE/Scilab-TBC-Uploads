//Ex 6.19
clc;
clear;
close;
format('v',6);
//Data given
Rf=15;//kohm
RT1=4.7;//kohm
R1=56;//kohm
R2=6.8;//kohm
R3=10;//kohm
R4=1;//kohm
R5=1;//kohm
CB=1;//micro F
CT=0.05;//mic
VCC=15;//V
V1=-15;//V////Voltage given through the resistance(R1) 56 kohm
disp("Part (i)");
Vin=2;//V
Vo=Rf/R1*(-V1)-Rf/R2*Vin;//V
disp(Vo,"Voltage Vo(V)");
N_VCC=0;//V////-VCC////voltage given to the 12th pin of IC
V7=N_VCC+3;//V
disp(V7,"Voltage V7(V)");
I=(V7-Vo)/RT1;//mA
disp(I,"Current I(mA)");
Rmult=R4*R5/(R4+R5)+R3;//kohm////on pin 3
disp(Rmult,"Total resistance on pin 3, Rmult(kohm)");
format('v',4);
f0=0.32*I*10^-3/(CT*10^-6)/1000;//kHz
disp(f0,"Oscillation frequency(kHz)");
disp("Part (ii)");
format('v',4);
Vin=5;//V
Vo=Rf/R1*(-V1)-Rf/R2*Vin;//V
disp(Vo,"Voltage Vo(V)");
N_VCC=0;//V////-VCC////voltage given to the 12th pin of IC
V7=N_VCC+3;//V
disp(V7,"Voltage V7(V)");
I=(V7-Vo)/RT1;//mA
format('v',6);
disp(I,"Current I(mA)");
Rmult=R4*R5/(R4+R5)+R3;//kohm////on pin 3
disp(Rmult,"Total resistance on pin 3, Rmult(kohm)");
f0=0.32*I*10^-3/(CT*10^-6)/1000;//kHz
disp(f0,"Oscillation frequency(kHz)");
