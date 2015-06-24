//example 6.19

clear;
clc;

//Given:
R=8.314;//Universal gas constant[J.K^-1.mol^-1]
Tb=373.15;//Boiling point temperature[K]
M1=0.018;// mass of water[kg]
Hvap=40.7;//Enthalpy of vaporization[KJ.mol^-1]

//To find the Ebullioscopic constant of water
a=R*0.001*Tb^2*M1;
b=Hvap;
Kb=a/b;//Ebullioscopic constant of water[K.Kg.mol^-1]
printf("The Ebullioscopic constant of water is %f K.Kg.mol-1",Kb);





