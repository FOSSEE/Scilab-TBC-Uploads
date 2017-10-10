//EMF and copper losses of a Shunt Motor

clc;
clear;

V=250;
I=200;
Ra=0.02; // Armature Resistance
Rf=50; // Field Resistance
Pil=950; // Iron and frictional losses

Ish=V/Rf; // Field Current
Ia=Ish+I; // Armature Current

Pac=(Ia^2)*Ra; // Armature copper loss
Pfc=(Ish^2)*Rf;// Field copper loss

Pc=Pac+Pfc;

E=V+(Ia*Ra);

Prime=(V*I)+Pil+Pc;// Ouput of prime mover is the input to the generator

eff=(V*I*100)/Prime;

printf('i) The EMF generated = %g V \n',E)
printf('ii) Total Copper Loss = %g watts \n',Pc)
printf('iii) Output of the prime mover is %g watts and the efficiency is %g percent \n',Prime,eff)
