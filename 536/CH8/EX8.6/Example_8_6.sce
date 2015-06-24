clc;
clear;
printf("\n Example 8.6\n");

P1=101.3e3;
Q_watr=0.01;
printf("\n Given:\n Flow rate of Water = %.2f m^3/s",Q_watr);
depth=100;
printf("\n Depth of well = %d m",depth);
d=100e-3;
printf("\n Diameter of pipe = %d mm",d*1e3);
depth_watr=40;
printf("\n Level of water below water = %d m",depth_watr);
Q_air=0.1;
printf("\n Flow rate of Air = %.2f m^3/s",Q_air);
P2=800e3;
Gamma=1.4;
//V1=Q_air;
G_watr=Q_watr*1000;//Mass flow of water
W=G_watr*depth_watr*9.81;
//The energy needed to compress 0. 1 m^3/s of air is given by:
E=P1*Q_air*(1.4/0.4)*((P2/P1)^(0.4/1.4)-1);//     equation 8.37
printf("\n\n Calculations:\n The power required for this compression is = %d W",E);
effi=W/E*100;
printf("\n Efficiency = %.1f per cent",effi);
//the mean pressure
P=345e3;
printf("\n The mean pressure = %d kN/m^2",P);
v1=8314*273/(29*P);
printf("\n The specific volume v of air at 273 K and given pressure is = %.3f m^3/kg",v1);
v2=8314*273/(29*P1);
printf("\n The specific volume v of air at 273 K and 101.3 kN/m^2 is = %.3f m^3/kg",v2);
G_air=Q_air/v2; //mass flowrate of the air is:
Q_mean=G_air*v1;//Mean volumetric flowrate of air
Q_tot=Q_watr+Q_mean;//Total volumetric flowrate
A=%pi/4*d^2;//Area of pipe
v_mean=Q_tot/A;
printf("\n Mean velocity of the mixture = %.2f m/s",v_mean);



