//Chapter 9
//page no 302
//given
clc;
clear all;
B=92*10^-12;            //in m^2/N
Tf=1550;        //in K
n=1.46;            //refractive index
p=0.29;
K=1.38*10^-23;          //in J/K
l=1;            //in km
L1=630;         //in nm
L2=1330;         //in nm
L3=1550;         //in nm
disp("Rayleight scattering coefficient");
Y1=8*%pi^3*n^8*p^2*B*K*Tf/3/(L1*10^-9)^4;
Y2=8*%pi^3*n^8*p^2*B*K*Tf/3/(L2*10^-9)^4;
Y3=8*%pi^3*n^8*p^2*B*K*Tf/3/(L3*10^-9)^4;  
mprintf(" for L1= 630nm, is %e",Y1);
mprintf("\n for L2= 1330nm, is %e",Y2);
mprintf("\n for L3= 1550nm, is %e",Y3);
//Misprinted answer

disp("Rayleight scattering attenuation factor");
Fr1=%e^-(Y1*l*10^3);
Fr2=%e^-(Y2*l*10^3);
Fr3=%e^-(Y3*l*10^3);
printf(" \n for Y1=  0.00179 is %0.2f",Fr1);
printf(" \n for Y2=  0.00009 is %0.2f",Fr2);
printf(" \n for Y3=  0.0000182 is %0.2f\n",Fr3);
//

disp("Rayleight scattering attenuation ");
Ar1=10*log10(Fr1^-1);
Ar2=10*log10(Fr2^-1);
Ar3=10*log10(Fr3^-1);
printf(" \n for Ar1=  0.17 is %0.2f dB/km",Ar1);
printf(" \n for Ar2=  0.91 is %0.2f dB/km",Ar2);
printf(" \n for Ar3=  0.98 is %0.3f dB/km",Ar3);
//For L3 answers in book are misprinted
//Rounding off errors in answer
