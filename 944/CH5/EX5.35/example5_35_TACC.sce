//example 5.35

clear;
clc;

//Given:
Kb=0.51;//ebullioscopic constant of water [K*Kg/mol]
n=155/180;//no. of moles of glucose
m=n/1;//[mol/Kg]
Ti=373;//Boiling point temperature of water[K]

//To find the boiling point of the solution which is made by dissolving 155g of glucose in 1000g of water
Tf=(Ti+Kb*m)-273;//boiling point temperature of the solution[C]
printf("The boiling point of the solution is %f C",Tf);



