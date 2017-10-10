s=poly(0,'s'); 
F=syslin('c',[(1+0.5*s)/((1+2*s)*s*(1+0.05*s+0.125*s^2))]) 

fmin=0.1; //Min freq in Hz
fmax=20; //Max freq in Hz

scf(1);clf;
bode(F,fmin,fmax); //Plots frequency response of open-loop system in Bode diagram

[GainMargin,freqGM]=g_margin(F) //Calculates gain margin [dB] and corresponding frequency [Hz]
disp(GainMargin,"GM=")
disp(freqGM*2*(%pi),"omegaPC=")

[PhaseMargin,freqPM]=p_margin(F) //Calculates phase [deg] and corresponding freq [Hz] of phase margin
disp(PhaseMargin,"PM=")
disp(freqPM*2*(%pi),"omegaGC")

show_margins(F) //display gain and phase margin and associated crossover frequencies

