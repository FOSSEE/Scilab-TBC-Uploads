s=poly(0,'s'); 
F=syslin('c',[1/((1+s)*s*(0.1*s+1))])                  //without k

fmin=0.1;                                        //Min freq in Hz
fmax=20;                                          //Max freq in Hz

scf(1);clf;
bode(F,fmin,fmax);                                //Plots frequency response of open-loop system in Bode diagram

show_margins(F)                                //display gain and phase margin and associated crossover frequencies

// TO FIND VALUE OF K

// for GM=30 dB, the point on the plot without k is 10dB away from 0dB line.
k1=10^(-10/20)                                      // 20*log(k1)=-10
disp(k1,"k for GM=30 is ")
F1=syslin('c',[(k1)/((1+s)*s*(0.1*s+1))])

[PhaseMargin,freqPM]=p_margin(F1)                
disp(freqPM*2*3.14,"corresponding omegaGC")
disp(PhaseMargin,"PM=")

// for PM=30degrees, the point on the magnitude plot without k is 6dB away from 0dB line.
k2=10^(6/20)                                      // 20*log(k1)= 6 dB
disp(k2,"for PM=30degrees k is ")
F2=syslin('c',[(k2)/((1+s)*s*(0.1*s+1))])

[PhaseMargin,freqPM]=p_margin(F2)                
disp(freqPM*2*3.14,"corresponding omegaGC")
[GainMargin,freqGM]=g_margin(F)
disp(GainMargin,"GM=")