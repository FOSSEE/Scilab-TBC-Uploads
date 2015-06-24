clc;
clear;
close;
//pagec no 111
//Figure 4.18
Ai=50;
Rl=200*10^3;          //In Ohm
//Ai=1+(Ri/Rf)
Rf=1*10^3;          //In Ohm(Assumption)
Ri=Rf*(Ai-1);
disp("ohm",Ri,"Ri for Rf 1000ohm");
Rf=2*10^3;          //In Ohm(Assumption)
Ri=Rf*(Ai-1);
disp("ohm",Ri,"Ri for Rf 2000ohm");
Rf=0.5*10^3;          //In Ohm(Assumption)
Ri=Rf*(Ai-1);
disp("ohm",Ri,"Ri for Rf 500ohm");
Imax=13.5/Rl;
disp("A",Imax,"Resulting current");
disp("A",Imax/50,"Maximum allowable input current ");
