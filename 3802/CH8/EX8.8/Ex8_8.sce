//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_8.sce.

clc;
clear;
R=200;
P=100e3;
V=500;
E=525;

printf("\n  (a)")
Il=P/V;
If=V/R;
Ia=Il+If;
Ra=(E-V)/Ia;
printf("\n The armature resistance=%1.4f ohm \n",Ra)

printf("\n  (b)")
P=60e3;
V=520;
Il=P/V;
If=V/R;
Ia=Il+If;
E=V+(Ia*Ra);
printf("\n The generated emf=%3.2f volt",E)
