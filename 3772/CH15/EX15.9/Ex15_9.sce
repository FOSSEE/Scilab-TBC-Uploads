// Problem no 15.9,Page no.359

clc;clear;
close;

P=14*10**3 //N //Axial pull
dL=0.0084 //cm //Elongation
L=0.25 //m //Length
p=7*10**6 //Internal pressure
dL_2=0.0034 //cm //Longation
d=0.0475 //m //Internal diameter 
D=0.05 //m //External Diameter
m=0.25

//Calculation

t=(D-d)*2**-1 //thickness  od tube
A=%pi*4**-1*(D**2-d**2) //Area of tube
sigma=P*A**-1 //stress
e=dL*(L)**-1 //strain
E=sigma*e**-1 //Modulus of Elasticity
sigma_1=p*d*(2*t)**-1 //Hoop stress
sigma_2=p*d*(4*t)**-1 //Longitudinal stress

m=-(sigma_1*(dL_2*L**-1*E-sigma_2)**-1) //POissoin's ratio\

//Let X=1*m**-1
X=1*m**-1 //Poissoin's ratio

//Result
printf("The value of Poissoin''s ratio is %.3f",X)
