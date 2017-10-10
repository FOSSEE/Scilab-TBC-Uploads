//solving the block diagram.. we have GH=k*(s+2)/s^2
s=poly(0,'s'); 
F=syslin('c',[k*(s+2)/(s^2)]) 

x=2*tan(50*%pi/180)                //50 = 180 + atan((x/2)) - 180
disp(x,"omegaGC = ")

k=(x^2)/sqrt(4+x^2)                   // |k|*sqrt(4+x^2)/(x^2) = 1
disp(k,"for PM=50 K is ")

[GainMargin,freqGM]=g_margin(F)           //Calculates gain margin [dB] and corresponding frequency [Hz]
disp(GainMargin,"GM=")

