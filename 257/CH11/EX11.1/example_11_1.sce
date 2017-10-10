s=poly(0,'s'); 
F=syslin('c',[20/((1+0.1*s)*s)]) 
fmin=0.1; //Min freq in Hz
fmax=20; //Max freq in Hz
scf(1);clf;
bode(F,fmin,fmax); //Plots frequency response of open-loop system in Bode diagram
show_margins(F) //display gain and phase margin and associated crossover frequencies
