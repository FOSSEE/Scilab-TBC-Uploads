//Chapter-2, Illustration 21, Page 80
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
P1=1;//Pressure at point 1 in atm
P3=5;//Pressure at point 3 in atm
T1=288;//Temperature at point 1 in K
T4=1143;//Temperature at point 4 in K
y=1.4;//Ratio of specific heats
Cp=1.005;//Specific heat at constant pressure in kJ/kg-K

//CALCULATIONS
rp=P3/P1;//Pressure ratio
x=(y-1)/y;//Ratio
T3=T1*(rp^x);//Temperature at point 3 in K
T5=T4-(T3-T1);//Temperature at point 5 in K
T6=T4/(rp^x);//Temperature at point 6 in K
C6=sqrt(2000*Cp*(T5-T6));//Velocity of air leaving the nozzle in m/s

//OUTPUT
mprintf('Velocity of air leaving the nozzle is %3.1f m/s',C6)






//==============================END OF PROGRAM=================================
