//ques5
//Electric Heating of a Gas at Constant Pressure
clear
clc
V=120//voltage in V
I=0.2//current in Ampere
t=300//time in sec
We=V*I*t/1000//work done in kJ
//1-initial condition
P1=400//kPa initial Pressure 
V1=0.5//Volume in m^3
R=0.297//gas constant for water
T1=300//Temp in K
m=0.025;//mass in kg
//(a) From Energy equation We-Qout=dH=m(h2-h1)
//    i.e. h2=(We-Qout)/(m)+h1
//(b) Final Temperature
Qout=3.7//heat out in kJ
h1=2724.9//Initial Enthalpy in kJ/kg
h2=(We-Qout)/(m)+h1;//final Enthalpy in kJ/kg
//So from steam table A-6
T2=200;//Temp in C for P2=300kPa and h2
printf('Final Temperature T2 = %.0f C',T2);
