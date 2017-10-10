//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_10.sce.

clc;
clear;
Ra=0.1;

printf("\n    (a)")
Ia=80;
V=230;
E=V+(Ia*Ra);
printf("\n   The generated emf when running as generator=%3.0f volt \n",E)

printf("\n    (b)")
Ia=60;
V=230;
E=V-(Ia*Ra);
printf("\n   The generated emf when running as motor=%3.0f volt \n",E)
