clc;
// page no 34
// prob no1.13 refer fig 1.20 of page no 34
// part A) The signal frequency is f1=110MHz.
f=110;// in MHz
disp('MHz',f,'A)The freq is');
//The signal peak is two divisions below the reference level of -10dBm, with 10dB/division ,so its -30dBm.
PdBm=-30;
disp('dBm',PdBm,'The power in dBm');
// The equivalent power can be found from P(dBm)=10logP/1 mW
//P(mW)=antilog dBm/10= antilog -30/10=1*10^-3mW=1uW
//the voltage can be found from the graph but it is more accurately from P=V^2/R
P=10^-6; R=50;
disp('W',P,'The power is');
V=sqrt(P*R);
disp('volts',V,'The voltage is');

// part B)The signal is 1 division to theleft of center, with 100kHz/div. The freq is 100kHz less than the ref freq of 7.5MHz
f=7.5-0.1;// in MHz
disp('MHz',f,'B)The freq is');
// With regards to the amplitude, the scale is 1dB/div & the signal is 1 div below the reference level. Therefore the signal has a power level given as
PdBm=10-1;// in dBm
// This can be converted to watts & volts as same in part A
//P(mW)=antilog dBm/10= antilog 9/10=7.94mW
P=7.94*10^-3; R=50;
disp('W',P,'The power is');
disp('dBm',PdBm,'The power in dBm');
V=sqrt(P*R);
disp('volts',V,'The voltage is');

//part C) The signal is 3 divisions to the right of the center ref freq of 543MHz, with 1MHz/div. Therefore the freq is 
f=543+3*1;// in MHz
disp('MHz',f,'C)The freq is');
// from the spectrum, signal level is
V=22.4*6/8;
disp('mV',V,'The voltage is');
// power is given as
P=V^2/R;
disp('uW',P,'The power is');
PdBm=10*log10(P*10^-6/10^-3);
disp('dBm',PdBm,'The power in dBm');