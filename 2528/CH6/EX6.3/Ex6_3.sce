//Example6.3:"Determine the Power Bandwidth""
//Page 183
//figure 6.14
clear;
clc;
Vp=10;      //in V
Vcc=15;         //in V
Rf=50000;       //in Ohm
Ri=2000;         //in Ohm
Rset=3*10^6;           //in Ohm
Iset=(Vcc-0.5)/Rset;
disp("A",Iset,"Iset")
Anoise=1+Rf/Ri;
disp(Anoise,"Anoise");
funity=200000;      //in Hz
f2=funity/Anoise;
disp("Hz",f2,"f2");
SR=0.11/10^-6;    //in V/S
fmax=SR/(2*%pi*Vp);
disp("Hz",fmax,"fmax");
//Result//
