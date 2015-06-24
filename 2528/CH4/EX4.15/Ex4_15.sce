clc;
clear;
close;
//pagec no 118
//Figure 4.27
Ri=10*10^3;     //In ohm
Av=26;      //In dB
Av1=10*log10(Av);
Rf1=Av1*Ri;
//Rf1=20*Ri1;
//Ri1+20*Ri1=Ri;
//Ri1=Ri-Rf1;
Ri1=Ri/21;
Rf1=20*Ri1;
disp("ohm",Rf1,"Rf1 is")
