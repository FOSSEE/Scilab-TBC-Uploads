//caption:find value of arm CD
//Ex4.11
clc
clear
close
C1=0.2*10^-6//capacitance of arm AB(in F)
R2=500//resistance of arm BC(in ohm)
R3=300//resistance of arm BC(in ohm)
C3=0.1*10^-6//capacitance of arm AD(in F)
f=1000//frequency of bridge(in Hz)
w=2*%pi*f
Z1=-%i/(w*C1)
Z2=R2
Z3=1/((1/R3)+%i*w*C3)
Z4=(Z2*Z3)/Z1
disp(Z4,'value of arm CD=')