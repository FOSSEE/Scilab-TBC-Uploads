clear;
clc;
Ymin=18*(10^-2);S=2.5;dmin=20*(10^-2);l=52*(10^-2);Zo=300;
//dmin=distance betweeen adjacent voltage minimas
ampK=round(((S-1)/(S+1))*100)/100;
ZR=fix(Zo*(1+ampK)/(1-ampK));
printf("Input impedance = %f ohms\n",ZR);
lo=2*dmin; //lo=wavelength
b=(2*%pi)/lo;
phi=(2*b*Ymin)-%pi;
theta=-fix((phi-(2*b*l)));
Zm=Zo*(round((1+(ampK*exp(%i*theta)))*100)/100)/(round((1-(ampK*exp(%i*theta)))*100)/100);
printf("Load impedance = %f + j(%f) ohms",round(real(Zm*100))/100,round(imag(Zm*100))/100);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")
