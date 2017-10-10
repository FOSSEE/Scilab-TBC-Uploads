// Problem no 7.12,Page no.192

clc;clear;
close;

P=3680 //KW //Power transmitted
N=110 //r.p.m 
X=20000 //N*m //Energy stored
G=85 //GPa

//Calculations


//U*V**-1=X //Strain Energy per unit volume //Notification has been changed
//X=sigma_s**2*(4*G)**-1*((D**2+d**2)*(D**2)**-1)

T=P*60000*(2*%pi*N)**-1 //N*m //Torque transmitted by shaft
sigma_s=(20000*3*G*10**9)**(1*2**-1) //MPa //shear stress of shaft

//T=%pi*16**-1*((D**4-d**4)*D**-1)*sigma_s 

//After substituting and simplifying above equations,we get,

d=((T*16*3**0.5)*(%pi*8*sigma_s)**-1)**(1*3**-1)
D=3**0.5*d 

//Result
printf("Diameter of shaft is D= %.2f",D);printf(" m")
printf("\n                      d= %.2f",d);printf(" m")
