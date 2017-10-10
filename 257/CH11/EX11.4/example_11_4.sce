s=poly(0,'s'); 
F=syslin('c',[242*(s+5)/((1+s)*s*(s^2+5*s+121))]) 
fmin=0.1; //Min freq in Hz
fmax=20; //Max freq in Hz
scf(1);clf;
bode(F,fmin,fmax); //Plots frequency response of open-loop system in Bode diagram
show_margins(F) //display gain and phase margin and associated crossover frequencies

[GainMargin,freqGM]=g_margin(F) //Calculates gain margin [dB] and corresponding frequency [Hz]
disp(GainMargin,"GM=")
disp(freqGM*2*3.14,"omegaPC=")

[PhaseMargin,freqPM]=p_margin(F) //Calculates phase [deg] and corresponding freq [Hz] of phase margin
disp(PhaseMargin,"PM=")
disp(freqPM*2*3.14,"omegaGC")
