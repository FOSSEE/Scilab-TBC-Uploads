clc;
clear;

printf("\n Example 9.29\n");

G=1; //Flow rate of organic liquid
Cp=2e3//Heat capacity of organic liquid
T1=350;
T2=330;
theta1=290;
theta2=320;

Q=G*Cp*(T2-T1);//heat load
G_cool=Q/(4187*(theta1-theta2));//flow of water
GCp_hot=(G*Cp);//for organic
GCp_cold=(G_cool*4187);

//From equation 9.235:
eta=GCp_hot*(T1-T2)/(GCp_cold*(T1-theta1));
printf("\n Effectiveness of the given double pipe heat exchanger = %.2f",eta);