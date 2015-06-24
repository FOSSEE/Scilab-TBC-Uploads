//Example 10.6

clear;

clc;

VCC=15;

f0=10*10^3;

iA=100*10^(-6);

iB=iA;

R=(VCC/5)/iA;

C=0.3/(f0*R);

Rp=10*10^3;

Rsym=5*10^3;

Rre=R-(Rsym/2);

Rthd=100*10^3;

printf("Components for the Circuit :");

printf("\nR=%.1f kohms",Rre*10^(-3));

printf("\nRsym=%.f kohms",Rsym*10^(-3));

printf("\nRthd=%.f kohms",Rthd*10^(-3));

printf("\nC=%.f nF",C*10^9);

printf("\nTo calibrate the circuit, adjust Rsym so that the square wave has D(percent)=50,");

printf("\nand Rthd until the THD of the sine wave is minimized.");