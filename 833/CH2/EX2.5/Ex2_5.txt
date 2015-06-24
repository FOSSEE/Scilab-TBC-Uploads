//Caption: Find:(a) R_o (b)X_o (c)Resistance reffered to l.v side (d)Reactance reffered to l.v side
//Exa:2.5
clc;
clear;
close;
P_s=5000//Power Supplied(in VA)
V_1=220//Primary side voltage(in volt)
V_2=440//Secondary side voltage(in volt)
f=50//frequency(in hertz)
I_o=0.75//Open circuit test current(in A)
P_o=75//Open circuit test power(in watt)
V_s=16//Short circuit test voltage(in volt)
P_c=80//Short circuit test power(in watt)
pf=(P_o)/(V_1*I_o)
a=sind(acosd(pf))
R_o=(V_1)/(I_o*pf)
disp(R_o,'(a)R_o(in ohms)=')
X_o=(V_1)/(I_o*a)
disp(X_o,'(b)X_o(in ohms)=')
I_l=P_s/V_2
Z=V_s/I_l
R=(P_c)/(I_l^2)
X=sqrt(Z^2-R^2)
n=V_2/V_1
r=(R)/(n^2)
disp(r','(c)resistance reffered to low voltage side(in ohms)=')
x=(X)/(n^2)
disp(x,'(d)reactane reffered to low voltage side(in ohms)=')