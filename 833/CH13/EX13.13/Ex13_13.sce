//Caption:Estimate terminal voltage for (a)same excitation (b)Load current at 0.8 power factor lagging
//Exa:13.13
clc;
clear;
close;
P=1000//Power of alternator(in KVA)
V=3300//Voltage of alternator(in volts)
ph=3//Phase of alternator
pf=0.8//Power factor lagging
r=0.5//Resistance per phase(in ohms)
x=6.5//Reactance per phase(in ohms)
V_ph=V/sqrt(3)
I=(P*1000)/(sqrt(3)*V)
Eo=sqrt(((V_ph+(I*r*pf)+(I*x*sind(acosd(pf))))^2)+(((I*x*pf)-(I*r*sind(acosd(pf))))^2))
disp(Eo,'(a)Required terminal voltage(in volts)=') 
v=sqrt((Eo^2)-(((I*r*sind(acosd(pf)))+(I*x*pf))^2))+((I*x*sind(acosd(pf)))-(I*r*pf))
disp(v,'(b)Required voltage at given load current(in volts)=')