//Example 5.13 //hysteresis loss
clc;
clear;
close
Hx=125;//AT/m
ah=200;//cm^2
ba=0.15;//Wb/m^2
le=ah*Hx*ba;//J/m^3
lo=50;//loos
po=lo*le;//W/m^3
kg=8.5*10^3;//kg/m^3
lkg=po/kg;//watt
disp(lkg,"hysteresis loss is ,(W)=")
