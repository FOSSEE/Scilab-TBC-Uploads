//Ex 6.3
clc;clear;close;
format('v',5);
Ra=0.1;//ohm(Armature resistance)
Vs=250;//V(supply voltage)
//part(a)
I=80;//A
Vdrop=Ra*I;//V
emf=Vs+Vdrop;//V(Generated emf)
disp(emf,"Part(a) Generated emf(V)");
//part(b)
I=60;//A(current taken by Motor)
Vdrop=Ra*I;//V
emf=Vs-Vdrop;//V(Generated emf)
disp(emf,"Part(b) Generated emf(V)");
