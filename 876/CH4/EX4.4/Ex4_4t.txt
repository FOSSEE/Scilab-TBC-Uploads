//caption:Find deflection of the galvenometer
//Ex4.4
clc
clear
close
R1=80//resistance of first arm(in ohm)
R2=800//resistance of second arm(in ohm)
R3=160//resistance of third arm(in ohm)
R4=1605//resistance of fourth arm(in ohm)
E=4//battery voltage(in V)
S=8//galvenometer sensitivity(in milimeter per micro ampere)
Ro=80//internal resistance of the galvenometer(in ohm)
Eth=E*(R1/(R1+R3)-R2/(R2+R4))
Rth=R1*R3/(R1+R3)+R2*R4/(R2+R4)
Ig=Eth/(Rth+Ro)
D=S*Ig
disp(D,'deflection of the galvenometer(in m)=')