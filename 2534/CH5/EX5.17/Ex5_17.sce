//Ex5_17
clc
f =50
disp("vi = 16 sin(wt)")
Vdc = 16
RL = 100
C1 = 2*10^-3
C2 = 2*10^-3
L = 1.0
Idc = Vdc/RL
XC1 = 1/(2*%pi*f*C1)
XC2 = 1/(2*%pi*f*C2)
XL = 2*%pi*f*L
r = ((2^.5)*XC1*XC2)/(8*XL*RL)
disp("L = "+string(L)+"H")//inductance
disp("C1 = "+string(C1)+"F")//capacitance 1
disp("C2 = "+string(C2)+"F")//capacitance 2
disp("RL = "+string(RL)+"ohm")//load resistance
disp("f = "+string(f)+"Hz")//operating frequency
disp("Vdc = "+string(Vdc)+"V")//d.c. voltage
disp("Idc = Vdc/RL = "+string(Idc)+"A")//d.c. current
disp("XL = 2*%pi*f*L = "+string(XL)+"ohm")//inductive resistance
disp("XC1 = 1/(2*%pi*f*C1) = "+string(XC1)+"ohm")//capacitive resistance due to capacitance 1
disp("XC2 = 1/(2*%pi*f*C2) = "+string(XC2)+"ohm")//capacitive resistance due to capacitance 2
disp("r = ((2^.5)*XC1*XC2)/(8*XL*RL) = "+string(r))//ripple factor

