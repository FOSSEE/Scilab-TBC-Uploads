//finding output voltage//
//example 4//
clc
//clears the command window//
clear
//clears// 
V1=10;//voltage source amplitude//
Rf=50;//forward rsistance//
r1=50;//internal resistance//
i=V1*Rf/(Rf+r1)
//current through diode during positive half cycle//
C=10^-6
T=(Rf+r1)*C;//time constant during conduction//
f=10*10^3
T1=1/(2*f);//time duration during which input voltage is positive//
t=50*10^-6;//given time//
v=V1*(1-exp(-(t/T)));//voltage across capacitor after 50micro sec//
Vo=((V1-v)*Rf)/(Rf+r1);//output voltage across diode//
R=20*10^3;//resistance in series//
T2=(r1+R)*C;//time constant of discharging circuit//
V2=v*exp(-(t/T2));//voltage at the end of 50 micro sec//
printf('output voltage=%f volt',V2)
//result is displayed//
