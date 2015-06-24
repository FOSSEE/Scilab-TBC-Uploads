////Ex 8.2
clc;
clear;
close;
format('v',9);
fo=450;//kHz
deltafL=240;//kHz(+ve & -ve)
deltafC=40;//kHz(+ve & -ve)
Vplus=8*fo/deltafL;//V
//Vplus=(VCC-(-VEE))/2 but |VCC|=|-VEE|
VCC=Vplus;//V
VEE=Vplus;//V
disp(VCC,"For the design |VCC|=|-VEE| in Volt");
RT=4.7;//kohm(Assumed for design)
R=3.6;//kohm
CT=0.3/(RT*1000*fo*1000)*10^12;//pF
C=1/((deltafC*10^3)^2*(2*%pi*R*10^3)/(deltafL*1000))*10^9;//nF
disp(RT,"Value of RT(kohm)");
disp(CT,"Value of CT(pF)");
disp(C,"Value of C(nF)");
//Answer in the book is not accurate.
