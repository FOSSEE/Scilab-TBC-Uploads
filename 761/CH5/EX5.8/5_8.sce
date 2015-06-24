clc;
//page no 199
//prob no. 5.8
//LSB transmitter refering fig.5.14 with new carrier freq 9.0015 MHz & local oscillator freq 12.5015MHz
fco=9.0015;//carrier oscillator freq
flo=12.5015;//local oscillator freq
//Determination of new o/p freq
fo=fco+flo;
disp('MHz',fo,'The o/p carrier freq');