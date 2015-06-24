clc
clear

//INPUT DATA 
cp=6.865;//molar specific heat of hydrogen at constant pressure in kj/kg-K
cv=4.880;//molar specific heat of hydrogen at constant volume in kj/kg-K
p=1.013*10^6;//atmospheric pressure in dynes/cm^2
v=22.4*10^3;//gram molar volume in ml
T=273;//temperature at N.T.P in kelvins

//CALCULATIONS
J=(p*v)/(T*(cp-cv));//mechanical equivalent of heat

//OUTPUT
mprintf('the mechanical equivalent of heat is %3.2f j/cal',J)
