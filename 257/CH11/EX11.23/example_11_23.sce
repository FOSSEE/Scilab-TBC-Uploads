s=poly(0,'s'); 
F=syslin('c',[1/((1+s*0.02)*s*(0.05*s+1))])                  //without k

fmin=0.1;                                        //Min freq in Hz
fmax=20;                                          //Max freq in Hz

scf(1);clf;
bode(F,fmin,fmax);                                //Plots frequency response of open-loop system in Bode diagram

show_margins(F)                                //display gain and phase margin and associated crossover frequencies

// TO FIND VALUE OF K

// for GM=10 dB, the point on the plot without k is 26dB away from 0dB line.
k1=10^(26/20)                                      // 20*log(k1)=26
disp(k1,"k for GM=30 is ")
F1=syslin('c',[(k1)/((1+s*0.02)*s*(0.05*s+1))])

[PhaseMargin,freqPM]=p_margin(F1)                
disp(PhaseMargin,"PM=")
