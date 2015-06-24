//polynomial//
s=poly(0,'s'); //Defines s as polynomial variable
F=syslin('c',[40/((s+5)*(2+s)*s^2)]) //Creates transfer function in forward path
B=syslin('c',(1+0*s)/(1+0*s)); //Creates transfer function in backward path
OL=F*B; //Calculates open-loop transfer function
fmin=0.1; //Min freq in Hz
fmax=20; //Max freq in Hz
scf(1);clf;
bode(OL,fmin,fmax); //Plots frequency response of open-loop system in Bode diagram
show_margins(OL) //display gain and phase margin and associated crossover frequencies
