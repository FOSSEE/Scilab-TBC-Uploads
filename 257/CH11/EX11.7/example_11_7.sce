s=poly(0,'s'); 
F=syslin('c',[1/((1+0.5*s)*s*(s*0.2+1))]) 

fmin=0.1; //Min freq in Hz
fmax=20; //Max freq in Hz

scf(1);clf;
bode(F,fmin,fmax); //Plots frequency response of open-loop system in Bode diagram
disp("without including k")
[GainMargin,freqGM]=g_margin(F) //Calculates gain margin [dB] and corresponding frequency [Hz]
disp(GainMargin,"GM=")
disp(freqGM*2*3.14,"omegaPC=")

[PhaseMargin,freqPM]=p_margin(F) //Calculates phase [deg] and corresponding freq [Hz] of phase margin
disp(PhaseMargin,"PM=")
disp(freqPM*2*3.14,"omegaGC")

show_margins(F) //display gain and phase margin and associated crossover frequencies

// TO FIND K FOR GM=6dB

k= 10^(6/20)             //20*logk=6
disp(k,"k for GM=6 is")

// TO FIND K FOR PM=25 degrees

k= 10^(6/20)             //20*logk=6
disp(k,"k for PM=25 degrees is")