clc
A=10^-4
disp("A = "+string(A)+" cm^-2") //initializing value of cross sectional area.
VBn=0.55
disp("VBn = "+string(VBn)+"V") //initializing value of barrier height.
T=300
disp("T = "+string(T)+"K") //initializing value of absolute temperature.
R=110
disp("R = "+string(R)+" A/(K-cm^2)") //initializing value of richardson's constant.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
V=0.25
disp("V = "+string(V)+" V") //initializing value of forward bias voltage.
Io=A*R*T^2*exp(-VBn/Vt)
disp("reverse saturation current,Io=A*R*T^2*exp(-VBn/Vt) = "+string(Io)+" A") // calculation.
I=Io*((exp(V/Vt))-1)
disp("diode current,I=Io(exp(V/Vt)-1)="+string(I)+" A")//calculation
