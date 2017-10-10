s=poly(0,'s'); 
F=syslin('c',[80000/((2+s)*s*(s+50)*(s+200))])                  //without k

fmin=0.1;                                        //Min freq in Hz
fmax=20;                                          //Max freq in Hz

scf(1);clf;
bode(F,fmin,fmax);                                //Plots frequency response of open-loop system in Bode diagram

[GainMargin,freqGM]=g_margin(F)                 //Calculates gain margin [dB] and corresponding frequency [Hz]
disp(GainMargin,"GM=")


[PhaseMargin,freqPM]=p_margin(F)                //Calculates phase [deg] and corresponding freq [Hz] of phase margin
disp(PhaseMargin,"PM=")


show_margins(F)                                //display gain and phase margin and associated crossover frequencies

