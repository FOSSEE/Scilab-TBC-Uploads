s=poly(0,'s'); 
F=syslin('c',[4/((1+s)^3)]) 

fmin=0.1;                                 //Min freq in Hz
fmax=20;                                  //Max freq in Hz
scf(1);clf;
bode(F,fmin,fmax);                        //Plots frequency response of open-loop system in Bode diagram

[GainMargin,freqGM]=g_margin(F)           //Calculates gain margin [dB] and corresponding frequency [Hz]
disp(GainMargin,"GM=")
disp(freqGM*2*3.14,"omegaPC=")

[PhaseMargin,freqPM]=p_margin(F)               //Calculates phase [deg] and corresponding freq [Hz] of phase margin
disp(PhaseMargin,"PM=")
disp(freqPM*2*3.14,"omegaGC")

show_margins(F)                                   //display gain and phase margin and associated crossover frequencies

if(GainMargin>0 & PhaseMargin>0 )
    disp("stable system")
else
    disp("unstable system")
end
