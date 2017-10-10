s=poly(0,'s'); 
F=syslin('c',[(1+0.2*s)*(1+0.025*s)/((1+0.001*s)*s^(3)*(0.005*s+1))]) 

fmin=0.1; //Min freq in Hz
fmax=20; //Max freq in Hz

scf(1);clf;
bode(F,fmin,fmax); //Plots frequency response of open-loop system in Bode diagram

[GainMargin,freqGM]=g_margin(F) //Calculates gain margin [dB] and corresponding frequency [Hz]
disp(freqGM*2*3.14,"omegaPC=")
show_margins(F) //display gain and phase margin and associated crossover frequencies

//for omegaPC=16.54 ; the plot needs to be shifted by 64dB
k1=10^(64/20)    

//for omegaPC =400 ; the plot needs to be shifted by 100dB
k2=10^(100/20)

disp(k1,k2,"the 2 values k lies between are")
