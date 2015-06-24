clc;
//page 463
//problem 9.1

//Input signal strength Si = 0.5 W
Si = 0.5;

//Gaussian Power Spectral Density n = 10^(-10) W/Hz
n = 10^(-10);

//Baseband cutoff signal fM = 15 kHz
fM = 15 * 10^3;

//Maximum frequency deviation Df = 60 kHz
Df = 60 * 10^3;

//Average power of the modulating signal mt = 0.1 W
mt = 0.1;

SNR = (3/(4*%pi^2))*((Df/fM)^2)*mt^2*(Si/(n*fM));

disp('SNR is '+string(10*log10(SNR))+' dB');

//Part b

//Required SNR at output>40 dB = 10000

//From (a), required Si/0.5 > 10000/4052.8 
//Or, required Si > 1.2337 W
//Since, channel loss is 20 dB (=100), 
//Required transmitter power > 1.2337*100 = 123.37 

disp('Required transmitter power > 1.2337 x 100 = 123.37 ');
