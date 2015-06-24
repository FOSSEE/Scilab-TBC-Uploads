//Chapter-2, Illustration 22, Page 81
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
C1=280;//Velocity of aircraft in m/s
P1=48;//Pressure at point 1 kPa
T1=260;//Temperature at point 1 in K
rp=13;//Pressure ratio
T4=1300;//Temperature at point 4 in K
Cp=1005;//Specific heat at constant pressure in J/kg
y=1.4;//Ratio of specific heats

//CALCULATIONS
x=(y-1)/y;//Ratio
T2=T1+((C1^2)/(2*Cp));//Temperature at point 2 in K
P2=P1*((T2/T1)^(1/x));//Pressure at point 2 in kPa
P3=rp*P2;//Pressure at point 3 in kPa
P4=P3;//Pressure at point 4 in kPa
T3=T2*(rp^x);//Temperature at point 3 in K
T5=T4-T3+T2;//Temperature at point 5 in K
P5=P4*((T5/T4)^(1/x));//Pressure at point 5 in kPa
P6=P1;//Pressure at point 6 in kPa
T6=T5*((P6/P5)^x);//Temperature at point 6 in K
C6=sqrt(2*Cp*(T5-T6));//Velocity of air at nozzle exit in m/s
W=(C6-C1)*C1;//Propulsive power in J/kg
Q=Cp*(T4-T3);//Total heat transfer rate in J/kg
nP=(W/Q)*100;//Propulsive efficiency

//OUTPUT
mprintf('Pressure at the turbine exit is %3.1f kPa \n Velocity of exhaust gases are %3.1f m/s \n Propulsive efficiency is %3.1f percent',P5,C6,nP)











//==============================END OF PROGRAM=================================
