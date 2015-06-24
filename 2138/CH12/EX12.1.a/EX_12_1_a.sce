//Example 12.1.a // line current
clc;
clear;
close;
L=30;//load in kW
pf=0.8;//power factor
Vl=250;//line voltage in volts
I=((L*10^3)/(Vl*pf*sqrt(3)));//line current in ampers
Ip=I;// in star connection
disp(I,"line current (star connection) in ampere is")
disp(Ip,"pahse current (start connection) in ampere is")
