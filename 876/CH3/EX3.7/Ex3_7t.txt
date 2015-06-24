//caption:Find value of capacitance after application of pressure
//Ex3.7
clc
clear
close
A=600*10^-6//area of plates(in meter square)
D=2.5*10^-3//sepration of distance(in meter)
C=400*10^-12//capacitance(in F)
Do=0.5*10^-3//deflection(in mm)
e=(C*D)/A
d=D-Do
Co=(e*A)/d
disp(Co,'capacitance(in F)=')