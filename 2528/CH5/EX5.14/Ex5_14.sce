//Example5.14:"Output noise voltage""
//Page 167
//figure 5.29
clear;
clc;
Rf=99000;       // in Ohm
Ri=1000;        //in ohm
Rs=100;        //in ohm
Av=1+Rf/Ri;
disp(Av,"Av ordinary value");
disp(20*log10(Av),"Av dB value");
Anoise=Av;          //for non inverting amplifier
Rnoise=Rs+Rf*Ri/(Rf+Ri);
disp("Ohm",Rnoise,"Rnoise");

T=300;      //Given in degree cel.
K=1.38*10^-23;      //Boltzmann's constant
Vind=4*10^-9;       //In V/Hz
Iind=0.6*10^-12;     //in A/Sqrtof Hz
eth=(4*K*T*Rnoise)^0.5;      //sqared the 
etot=((Vind^2)+(Iind*Rnoise)^2 +eth^2)^0.5;
disp("V/(Hz)^0.5",etot,"etotal");

funity=10*10^6;     //in Hz
f2=funity/Anoise;
disp("Hz",f2,"f2");
BWnoise=f2*1.57;
disp("Hz",BWnoise,"BWnoise");

en=etot*(BWnoise)^0.5;
disp("V",en,"en");

en_out=en*Anoise;
disp("V",en_out,"en_out");

//for a nominal output signal of 1V RMS signal to noise ratio is 
signal=1;           //in V
Noise=en_out;
S_N=signal/Noise;

disp(S_N,"Signal to Noise ratio ");           //answer in book is approxmately 
disp(20*log10(S_N),"S/N in dB");
//Result
