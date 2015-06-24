//Exa4.6
clc;
clear;
close;
//given data
T=300;//in Kelvin
ND=10^15;//in cm^-3
NA=10^16;//in cm^-3
ni=1.5*10^10;//in cm^-3
VT=T/11600;//in Volts
e=1.6*10^-19;//in Coulamb
epsilon=11.7*8.854*10^-14;//constant
Vbi=VT*log(NA*ND/ni^2);//in Volts
SCW=sqrt((2*epsilon*Vbi/e)*(NA+ND)/(NA*ND));//in cm
SCW=SCW*10^4;//in uMeter
disp(SCW,"Space charge width in uMeters : ");
xn=0.864;//in uM
xp=0.086;//in uM
Emax=-e*ND*xn/epsilon;//in V/cm
disp(Emax,"At metallurgical junction, i.e for x=0 the electric field is peak i.e. Emax in volts : ");
//Note : Ans in the book is wrong