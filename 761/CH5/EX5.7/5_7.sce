clc;
//page no 196
//prob no. 5.7
//SSB transmitter refering fig.5.17 to transmit USB signal at carrier freq 21.5MHz
fo=21.5;//carrier freq in MHz
foc=8.9985;//carrier oscillator freq. in MHz
//Determination of freq of local oscillator
flo=fo-foc;
disp('MHz',flo,'The freq of local oscillator');