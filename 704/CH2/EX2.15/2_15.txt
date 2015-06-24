//Caption:In a dc machine Calculate (a)induced emf  (b)Electro magnetic torque (c)armature copper loss 
//Exam:2.15
clc;
clear;
close;
V=220;//voltage at the armature of dc motor
I_a=15;//current through armature(in Amp)
R_a=1;//armature resistance(in Ohm)
w=100;//speed of the machine(in radian/sec)
E=V-I_a*R_a;//induced emf(in V)
disp(E,'induced emf (in V)=');
T=E*I_a/w;//electro magnentic torque developed(in Nw-m)
disp(T,'electro magnentic torque developed(in Nw-m)=');
L=(I_a^2)*R_a;//Armature copper loss(in Watt)
disp(L,'Armature copper loss(in Watt)=');