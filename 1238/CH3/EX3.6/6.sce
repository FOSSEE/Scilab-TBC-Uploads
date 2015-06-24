//finding load resistance and value of capacitor//
//example 6//
clc
//clears the command window//
clear
//clears// 
Vo=15;//output voltage//
t=10*10^-3;//time duration//
tr=.05*10^-6;//rise time//
Rs=100*10^3;//source resistance//
C=50*10^-12;//output capacitance//
S=.05;//sag allowed//
//tr=.35/f2 where f2=upper cut off frequency//
//also tr=2.2*R*C where R=load resistance//
R=tr/(2.2*C)
printf('resistance=%f ohms\n',R)
//result is displayed//
Cs=t/(Rs*S);//Cs=source capacitor//
printf('capacitance=%f farad',Cs);//result is displayed//

