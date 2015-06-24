//Determine critical disruptive voltage and Visual critical voltage and Corona loss
clear;
clc;
//soltion
//given
r=1.036/2;//cm//conductor radius
d=2.44*10^2;//cm//spacing
go=21.1;//kV/cm//Dielectric strength
mo=0.85;//irregularity factor
mv=0.72;//roughness factor
b=73.15;//pressure
t=26.6;//temperature
f=50;//frequency
del=3.92*b/(273+t);
Vph=110/sqrt(3);//kV//Voltage to which conductor are subjected
Vdo=go*del*mo*r*log(d/r);
Vvo=go*del*mv*r*(1+0.3/sqrt(del*r))*log(d/r);
printf("Critical voltage to neutral= %.3f kV(rms)\n",Vdo);
printf("Visual critical voltage to neutral= %.1f kV(rms)\n",Vvo);
Pc=(244/del)*(f+25)*sqrt(r/d)*(Vph-0.8*Vdo)^2*10^-5;
printf("Total corona loss for 160 km, 3 phase line= %d kW\n",ceil(160*3*Pc));
ra=Vph/(0.8*Vdo);
k=0.46;
printf("For this value of the Vph/Vdo(%.2f) K= %.2f\n",ra,k);
Pc2=21*10^-6*f*((Vph)^2)*k/(log10(d/r))^2;
printf("Total corona loss(under bad weather) for 160 km, 3 phase line= %.2f kW\n",160*3*Pc2);
//IN BOOK THE CORONA LOSS UNDER BAD CONDITION IS 1308.5 BECAUSE OF SOME TYPOLOGICAL ERROR
