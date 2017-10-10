s=poly(0,'s'); 
F=syslin('c',[(s^2)/((1+0.2*s)*(0.02*s+1))])                  //without k

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

// at omega=5, the point on the plot without k 28dB away from 0dB line.
k1=10^(-28/20)                                      // 20*log(k1)=-28
disp(k1,"k for omegaGC=5 is ")
