//Caption:Find the excitation voltage in per unit
//Exa:14.1
clc;
clear;
close;
pf=0.9//Power factor
Xd=1//Direct axis synchronous reactance(in per unit)
Xq=0.6//Quadrature axis synchronous reactance(in per unit)
V=1//Terminal voltage(in volts)
ang=49//Phase angle between Ia and excitation voltage(in degrees)
Ia=0.9-(%i*0.436)//Armature current(in A)
v=(%i)*Ia*Xq
E=V+v
Id=sqrt(Ia*conj(Ia))*sind(ang)
Iq=sqrt(Ia*conj(Ia))*cosd(ang)
Ef=sqrt(E*conj(E))+(Id*(Xd-Xq))
disp(Ef,'Excitation voltage (in per unit)=')