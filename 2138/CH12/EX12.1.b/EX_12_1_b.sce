//Example 12.1.b // phase current
clc;
clear;
close;
L=30;//load in kW
pf=0.8;//power factor
Vl=250;//line voltage in volts
I=((L*10^3)/(Vl*pf*sqrt(3)));//line current in ampers
Ip=I/(sqrt(3));//phase current
Il=sqrt(3)*Ip;//line current in amperes
disp(Ip,"phase current in ampere is")
disp(Il,"line current (delta connection ) in amperes is")
