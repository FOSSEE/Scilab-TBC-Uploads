//Exa 6.10
clc;
clear;
close;
//given data :
format('v',6);
nm=3.5;//refractive index of InP;unitless
n=1;//refractive index of air ;unitless
F=0.6;//Transmission factor at crystal-air interface
//Part (a)
disp("Pe=Pint*F*n^2/(4*nm^2)");
//Let F*n^2/(4*nm^2)=x
x=F*n^2/(4*nm^2);
disp(string(x)+"Pint");
disp("Hence the power emitted into air is only 1.2% of the internal optical power.");
//Part (b)
disp("ETAext=(Pe/P)*100");
disp("ETAext=(0.012*Pint/P)*100")
//Given : Pint=0.5P
disp("ETAext=(0.012*0.5*P/P)*100")
disp("ETAext : "+string((0.012*0.5)*100)+"%");