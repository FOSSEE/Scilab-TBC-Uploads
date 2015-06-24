// Example 3.3;hystresis  loss per Kg
clc;
close;
clear;
// given :
format('v',7)
l=10;//lengh in mm
atm=200;//AT/m
a=4800;//area in m^2
loss=atm*(l*10^-2)*(a/100);//loss in J/m^3/cycle
d=7.8*10^3;//kg/m^3
vikg=1/d;//m^3
loss1=loss*vikg;//J/cycle
f=50;//Hz
tl=loss1*f;//J/s
disp(tl,"hystersis loss is ,(W/kg)=")
