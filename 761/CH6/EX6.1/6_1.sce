clc;
//page no 227
//prob no. 6.1
//A tuned ckt with broadast band (540 to 1700 kHz).Bw=10kHz at 540 kHz
BW1=10*10^3;f1=540*10^3;f2=1700*10^3;//all in Hz
//Determination of BW at 1700kHz
BW2=BW1*sqrt(f2/f1);
disp('kHz',BW2/1000,'The Bandwidth at 1700kHz');