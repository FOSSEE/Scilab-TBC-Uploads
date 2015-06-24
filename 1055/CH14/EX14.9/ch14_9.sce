//To determine the R1, R2 and C. also The potential across relays
clear 
clc;
Vs=110;
I=1;
R2=Vs/((3-%i*sqrt(3))*I);
c=abs(R2);
mprintf("R2=%.2f ohms\n",c);
R1=2*c;
d=abs(R1);
C=(10^6)/(.866*d*314);
mprintf("R1=%.2f ohms\n",R1);
mprintf("C=%.1f micro farads\n",C);
Vt=d*(-.5 - %i*.866) + (c - %i*55 );
disp(Vt," Voltage across the terminals of the relay will be (V)=");
