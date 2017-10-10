s=poly(0,'s'); 
F=syslin('c',[1/((2+s)*s*(s+10))])                  //without k

fmin=0.1;                                        //Min freq in Hz
fmax=20;                                          //Max freq in Hz

scf(1);clf;
bode(F,fmin,fmax);                                //Plots frequency response of open-loop system in Bode diagram

[GainMargin,freqGM]=g_margin(F)                 //Calculates gain margin [dB] and corresponding frequency [Hz]
disp(GainMargin,"GM=")
disp(freqGM*2*3.14,"omegaPC=")

[PhaseMargin,freqPM]=p_margin(F)                //Calculates phase [deg] and corresponding freq [Hz] of phase margin
disp(PhaseMargin,"PM=")
disp(freqPM*2*3.14,"omegaGC")

show_margins(F)                                //display gain and phase margin and associated crossover frequencies

// TO FIND VALUE OF K

//we have to make omegaPC=omegaGC. the required upward shift is 22dB
k1=10^(22/20)                                      // 20*log(k1)=22
disp(20*k1,"k marginal = ")
