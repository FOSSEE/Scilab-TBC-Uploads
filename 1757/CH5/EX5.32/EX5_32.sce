//Example5.32  // To determine full power and small signal bandwidth of an op-amp with unity gain
clc;
clear;
close;
f = 100*10^6 ; // Hz  unity gain bandwidth
ACL = 10^4 ; // maximum closed loop gain
Slewrate = 0.51 ; // V/u sec
Vp = 10 ; // V peak volt

// The full power bandwidth
FPBW = (Slewrate/(2*3.14*Vp));
FPBW = FPBW*10^6 ;  // *10^6 because Slew rate is V/uV 
disp('The full power bandwidth FPBW is = '+string(FPBW)+' Hz ');

// the 3-db frequency or small signal band width 
f3db = (f/ACL);
disp('The 3-db frequency or small signal band width f3db is = '+string(f3db)+' Hz ');





