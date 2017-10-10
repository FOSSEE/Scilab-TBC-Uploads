// Problem no 7.11,Page no.191

clc;clear;
close;

P=4415 //KW //Power transmitted
N=110 //r.p.m
sigma_s=75 //MPs //shear stress
G=85 //GPa

//Calculations

//D=2*d 

T=P*60000*(2*%pi*N)**-1 //N*m //Torque Transmitted

//T=%pi*16**-1*(D**4-d**4)*D**-1*sigma_s //N*m

//After substituting and simplifying above equations,we get,

D=(T*16*%pi**-1*(sigma_s*10**6)**-1)**(1*3**-1)
d=D*2**-1
X=5*(sigma_s*10**6)**2*(16*G*10**9)**-1

//U*V**-1 //Energy stored
//X=U*V**-1 //Energy stored //Notations has been changed

//Result
printf("Diameter of shaft is:D %.2f",D);printf(" cm")
printf("\n                     :d %.2f",d);printf(" cm")
printf("\n Energy stored per cubic meter is %.2f",X);printf(" N/m**2")
