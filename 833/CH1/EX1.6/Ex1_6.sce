//Caption:Find (a) impedance (b) % resistance and reactance
//Exa:1.6
clc;
clear;
close;
P_s=500000//Power supplied(in VA)
V_1=2200//Voltage on primary side(in volt)
V_2=500//Voltage on secondary side(in volt)
f=50//frequency(in hertz)
r=0.01//Resistance of transformer(in ohms)
z=0.1//impedance of transformer(in %)
I=P_s/V_2
Z=z*V_2/I
disp(Z,'(a)Impedance(in ohms)=')
R=(I*r/V_2)*100
disp(R,'(b) Resistance(in %)=')
x=sqrt(Z^2-r^2)
X=(x*I/V_2)*100
disp(X,'Reactance(in %)=')