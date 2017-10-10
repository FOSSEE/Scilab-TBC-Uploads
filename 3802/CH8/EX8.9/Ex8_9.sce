//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_9.sce.

clc;
clear;
Ra=0.8;
Rsh=45;
Rse=0.6;
P=5e3;
V=250;
Il=P/V;
If=(V+(Rse*Il))/Rsh;
Ia=Il+If;
E=V+(Il*Rse)+(Ia*Ra);
printf("\n   Armature generated voltage=%3.2f volt \n",E)
