clc
clear

//INPUT DATA
cp=0.23;//specific heat at constant pressure in kj/kg-K
a=1.18;//density of air in gm/lit
J=4.2*10^7;//mechanical equivalent of heat in ergs/cal
t=300;//temperature of air in kelvin
p=73*13.6*981;//pressure of air in dynes
//cp-cv=(r/J)=pv/(tj)

//CALCULATON
cv=cp-(p*1000/(a*t*J));//specific heat at constant volume in calories

//OUTPUT
mprintf('the specific heat at constant volume is %3.5f calories',cv)
