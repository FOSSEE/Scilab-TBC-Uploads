//EX2_8 PG-2.33
clc
V=0.22;//forward bias voltage
T=25+273;//room temperature in degree kelvin
I0=2e-3;//reverse saturation current
n=1;//for germanium diode
k=8.62e-5//Boltzmann's constant
Vt=k*T;
I=I0*(exp(V/(n*Vt)));// diode current
printf("therefore the P-N junction diode current is %f A",I)
// in the book they have taken the approximate value 
//hence the answer is slighty different. in the book 
//Vt=0.02568(approx) whereas Vt=0.0256876(exact value)
