//Caption:Find (a)Armature current of second machine (b)Power factor of ecach machine
//Exa:14.9
clc;
clear;
close;
L=1000//Total load(in KW)
V=6600//Total voltage(in volts)
pf=0.8//Power factor
Ia=50//Armature current(in A)
L1=L/2
Ia1=(L1*1000)/(sqrt(3)*V)
pf1=Ia1/Ia
a1=acosd(pf1)
b=tand(a1)
P1=L1*b
Pl=L*tand(acosd(pf))
P2=P1-Pl
pf2=cosd(atand(P2/L1))
Ia2=Ia1/pf2
disp(Ia2,'(a)Armature current of second machine(in A)=')
disp(pf1,pf2,'(b)Power factor of both machines=')