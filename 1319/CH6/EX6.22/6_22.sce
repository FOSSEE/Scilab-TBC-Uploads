//Efficiency at full load

clc;
clear;

V=400;
Inl=5; // No load current
Ra=0.5; // Armature Resistance
Rf=200; // Field Resistance
Ifl=40; // Full load current

Ish=V/Rf; //  Field Current

Psc=(Ish^2)*Rf; // Field copper loss

Prs=(V*Inl)-Psc; // Stray losses assuming no armature losses

Ia=Ifl-Ish; // Armature Current

Pc=(Ia^2)*Ra;// Armature copper loss

Pi=Ifl*V; // Power input

Po=Pi-Psc-Prs-Pc;

eff=Po*100/Pi;

printf('The efficiency at full load = %g percent \n',eff)
