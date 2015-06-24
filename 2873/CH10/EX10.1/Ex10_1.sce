// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 1")
k=20*10^6;//spring constant in N/m^2
N=2000;//engine rpm
disp("from stroke to bore ratio i.e L/D=1.2 and cylinder diameter=bore,i.e D=12 cm")
D=12*10^-2;//cylinder diameter in m
disp("stroke(L)=1.2*D in m")
L=1.2*D
disp("Area of indicator diagram(A)=30*10^-4 m^2")
A=30*10^-4;
disp("length of indicator diagram(l)=(1/2)*L in m")
l=(1/2)*L
disp("mean effective pressure(mep)=A*k/l in N/m^2")
mep=A*k/l
disp("cross-section area of piston(Ap)=%pi*D^2/4 in m^2")
Ap=%pi*D^2/4
disp("for one cylinder indicated power(IP)=mep*Ap*L*N/(2*60) in W")
IP=mep*Ap*L*N/(2*60)
disp("for four cylinder total indicated power(IP)=4*IP in W")
IP=4*IP
disp("frictional power loss(FP)=0.10*IP in W")
FP=0.10*IP
disp("brake power available(BP)=indicated power-frictional power=IP-FP in W")
BP=IP-FP
disp("therefore,mechanical efficiency of engine(n)=brake power/indicated power=BP/IP")
n=BP/IP
disp("in percentage")
n=n*100
disp("so indicated power=90477.8 W")
disp("and mechanical efficiency=90%")
