clc;
clear;
close;
//page no 98
//figure 4.3
Av1=26;//in dB
Av=20;
//Zi=47*10^3  //in ohms
Ri=1*10^3;     ///In Ohms
//we know Av=1+(Rf/Ri)
Rf=Ri*(Av-1);
disp(Rf,"Value of Rf(ohm) when Ri is 1k");
Ri=2*10^3;     ///In Ohms
Rf=Ri*(Av-1);
disp(Rf,"Value of Rf(ohm) when Ri is 1k")
Ri=5*10^2;     ///In Ohms
Rf=Ri*(Av-1);
disp(Rf,"Value of Rf(ohm) when Ri is 1k")

