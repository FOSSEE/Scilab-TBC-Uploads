// Problem no 15.6,Page no.354

clc;clear;
close;

L=3 //m //Length
D=1 //m //Internal Diameter
t=0.015 //m //thickness
p=1.5*10**6 //Pa //Internal pressure
E=200*10**9 //Pa 
m=1*0.3**-1 //Poissoin's ratio

//Calculations

sigma_t=p*D*(2*t)**-1*10**-6 //MPa //Hoop stress
sigma_l=p*D*(4*t)**-1*10**-6 //MPa //Longitudinal stress

dD=(p*D**2*(2*t*E)**-1*(1-1*(2*m)**-1))*10**2 //cm //Change in Diameter
dL=p*D*L*(2*t*E)**-1*(1*2**-1-1*m**-1)*10**2 //cm //Change in Length

V=%pi*4**-1*D**2*L //Volume 
dV=p*D*(2*t*E)**-1*(5*2**-1-2*(m)**-1)*V*10**6 //cm //Change in Volume

//Result
printf("The circumferential stresses induced is %.2f",sigma_t);printf(" MPa")
printf("\n The Longitudinal stresses induced is %.2f",sigma_l);printf(" MPa")
printf("\n The change in dimension are:D is %.3f cm",dD)
printf("\n                            :L is %.4f cm",dL)
