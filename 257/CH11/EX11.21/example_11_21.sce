s=poly(0,'s'); 
F=syslin('c',[k/((1+0.2*s)*s*(0.05*s+1))])                  //without k

fmin=0.1;                                        //Min freq in Hz
fmax=20;                                          //Max freq in Hz

scf(1);clf;
bode(F,fmin,fmax);                                //Plots frequency response of open-loop system in Bode diagram

show_margins(F)                                //display gain and phase margin and associated crossover frequencies

// TO FIND VALUE OF K

k= 10^(26/20)
disp(k,"k marginal = ")

// for GM=10 dB, the point on the plot without k is 16dB away from 0dB line.
k1=10^(16/20)                                      // 20*log(k1)=-10
disp(k1,"k for GM=10 is ")


// for PM=40degrees, the point on the magnitude plot without k is 12dB away from 0dB line.
k2=10^(12/20)                                      // 20*log(k1)= 6 dB
disp(k2,"for PM=40degrees k is ")
