//caption:Find output voltage
//Ex3.5
clc
clear
close
V=5//secondary voltage(in V)
d=10//displacement(in mm)
D=8//displcement at which output voltage to be calculated(in mm)
S=(V/d)
O=S*D
disp(O,'output voltag(in V)=')