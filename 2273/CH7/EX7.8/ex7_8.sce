//Find corona characteristics
clear;
clc;
//soltion
//given
r=1/2;//cm//conductor radius
d=3*10^2;//cm//spacing
go=21.1;//kV/cm//Dielectric strength
mo=0.85;//irregularity factor
mv=0.72;//roughness factor
mv_=0.82;//for general corona
b=74;//pressure
t=26;//temperature
f=50;//frequency
del=3.92*b/(273+t);
Vph=110/sqrt(3);//kV//Voltage to which conductor are subjected
Vdo=go*del*mo*r*log(d/r);
Vvo_=go*del*mv*r*(1+0.3/sqrt(del*r))*log(d/r);
Vvo=Vvo_*(mv_/mv);
printf("Critical voltage to neutral= %.2f kV(rms)\n",Vdo);
printf("Visual critical voltage to neutral= %.1f kV(rms)\n",Vvo);
Pc=(244/del)*(f+25)*sqrt(r/d)*(Vph-Vdo)^2*10^-5;
printf("Total corona loss for 175 km, 3 phase line= %d kW\n",ceil(175*3*Pc));
Pc_=(244/del)*(f+25)*sqrt(r/d)*(Vph-0.8*Vdo)^2*10^-5;
printf("Total corona loss for 175 km, 3 phase line= %d kW\n",ceil(175*3*Pc_));
//THE ANS IN BOOK OF FAIR AND STORMY CONDITION IS 253 kW AND 1464kW BECAUSE OF USING ROUND OFF VALUES
