clc;
Vpk=10;
slewrate=0.5*10**6;
fmax=slewrate/(2*%pi*Vpk);
disp('HZ',fmax*1,"fmax=");//value of microamp 741
slewrate=13*10**6;
fmax=slewrate/(2*%pi*Vpk);
disp('kHZ',fmax*10**-3,"fmax=");//TLO 81
//value of microamp 741 is much lower than that of the input signal.And value of TLO81 is much higher than input signal,therefore TLO81 can be used
