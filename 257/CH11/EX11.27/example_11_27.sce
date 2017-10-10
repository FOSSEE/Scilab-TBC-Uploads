s=poly(0,'s'); 
F=syslin('c',[1/((121+13*s+s^2)*s)])                  //without k

fmin=0.1;                                        //Min freq in Hz
fmax=20;                                          //Max freq in Hz

scf(1);clf;
bode(F,fmin,fmax);                                //Plots frequency response of open-loop system in Bode diagram

show_margins(F)                                //display gain and phase margin and associated crossover frequencies

// TO FIND VALUE OF K

// for GM=12 dB, the point on the plot without k is 119.5dB away from 0dB line.
k1=10^(52/20)         // 20*log(k1)=52
disp(k1,"k=")
F1=syslin('c',[(k1)/((121+13*s+s^2)*s)])

[PhaseMargin,freqPM]=p_margin(F1)                
disp(PhaseMargin,"PM=")

