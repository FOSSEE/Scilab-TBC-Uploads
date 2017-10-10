s=poly(0,'s'); 
F=syslin('c',[1/((1+0.001*s)*(s*0.1+1)*(0.25*s+1))])                  //without k

fmin=0.1;                                        //Min freq in Hz
fmax=20;                                          //Max freq in Hz

scf(1);clf;
bode(F,fmin,fmax);                                //Plots frequency response of open-loop system in Bode diagram

show_margins(F)                                //display gain and phase margin and associated crossover frequencies

// TO FIND VALUE OF K

// for PM=40degrees, the point on the magnitude plot without k is 8dB away from 0dB line.
k2=10^(8/20)                                      // 20*log(k1)= 8 dB
disp(k2,"for PM=40degrees k is ")
F2=syslin('c',[(k2)/((1+0.001*s)*(s*0.1+1)*(0.25*s+1))])

[GainMargin,freqGM]=g_margin(F2)
disp(GainMargin,"GM=")