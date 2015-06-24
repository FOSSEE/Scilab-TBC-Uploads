clc
//Initialization of variables
T=300 //K
dv=0.02
vm=395 //m/s
m=5.32*10^-26 //kg
k=1.38*10^-23
vrms=483 //m/s
//calculations
N1=sqrt(2/%pi) *(m/(k*T))^(3/2) *vm^2 *exp(-1) *dv*vm
N2=sqrt(2/%pi) *(m/(k*T))^(3/2) *vrms^2 *exp(-3/2) *dv*vrms
//results
printf("Fraction of oxygen molecules at v most probable speed = %.4f ",N1)
printf("\n Fraction of oxygen molecules at v rms speed = %.4f ",N2)
