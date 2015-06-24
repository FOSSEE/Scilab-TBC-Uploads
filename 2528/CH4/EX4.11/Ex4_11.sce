clc;
clear;
close;
//pagec no 111
//Figure 4.17
Iin=5*10^-6;        //In Ampere
Ri=33*10^3;     //In Ohm
Rf=1*10^3;          //In Ohm
Rload=10*10^3;          //In Ohm
Ai=1+(Ri/Rf);           //for inverting current amplifier
Iout=Ai*Iin;
disp("A",Iout,"I out ");
Vmax=Iout*Rload+Iin*Ri;
disp("V",Vmax,"Vmax is");
disp("(No problem)")
