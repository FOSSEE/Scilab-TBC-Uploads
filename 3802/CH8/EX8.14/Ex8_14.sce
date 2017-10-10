//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_14.sce.

clc;
clear;
N=600;
V=500;
Il=32;
Ra=0.4;
Rf=250;

printf("\n (a)")
P=(V*Il)/1e3;
N1=450;
Ia=Il-(V/Rf);
k_phi=(V-(Ia*Ra))/N;
R=(V-(k_phi*N1))/Ia-Ra;
printf("\n  Input power at 600 r.p.m=%d kW \n",P)
printf("\n  Armature current Ia=%d A \n",Ia)
printf("\n  R=%1.2f ohm \n",R)

printf("\n (b)")
//To increase the speed the field control is used.
If1_by_If=0.856;
If=Il-Ia;
If1=If1_by_If*If;
Rf1=V/If1;
R=Rf1-Rf;
Ia1=Ia/If1_by_If;
Il=Ia1+If1;
Pi=(V*Il)/1e3;
printf("\n  New armature current Ia=%d A \n",Ia1)
printf("\n  New Input power=%2.1f kW",Pi)
