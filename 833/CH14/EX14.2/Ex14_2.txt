//Caption:Find regulation by (a)Two reaction method, and (b)Synchronous impedance method
//Exa:14.2
clc;
clear;
close;
pf=0.9//Power factor
Xd=1//Direct axis synchronous reactance(in per unit)
Xq=0.6//Quadrature axis synchronous reactance(in per unit)
V=1//Terminal voltage(in volts)
ang=49//Phase angle between Ia and excitation voltage(in degrees)
Ia=0.9-(%i*0.436)//Armature current(in A)
E=1.6742083//Excitation voltage(in per unit)
re=(E-V)*100/V
disp(re,'(a)Regulation by two reaction method(in%)=') 
Ef=V+(%i*Ia*Xd)
RE=((sqrt(Ef*conj(Ef)))-V)*100/V
disp(RE,'(b)Regulation by Synchronous impedance method(in%)=')