// Problem no 15.1,Page no.351

clc;clear;
close;

D=0.8 //m //Diameter of Shell
L=3 //m //Length of shell
t=0.01 //m //thickness of metal
E=200*10**9 //Pa 
p=2.5*10**6 //Pa //Internal Pressure
m=4 //Poisson's ratio

//Calculation

sigma_1=p*D*(2*t)**-1 //N/m**2 //Hoop stress
sigma_2=p*D*(4*t)**-1 //N/m**2 //Longitudinal stress

e_1=1*E**-1*(sigma_1-sigma_2*m**-1) //Hoop strain
e_2=1*E**-1*(sigma_2-sigma_1*m**-1) //Hoop strain

d=e_1*D*100 //cm //Increase in Diameter
l=e_2*L*100 //cm //Increase in Length

dell_v=2*e_1+e_2 //Volumetric strain
V=dell_v*%pi*4**-1*D**2*L*10**6 //cm**3 //Increase in Volume

//Result
printf("Change in Diameter is %.3f cm",d)
printf("\n Change in Length is %.3f cm",l)
printf("\n Change in Volume is %.2f",V);printf(" cm**3")
