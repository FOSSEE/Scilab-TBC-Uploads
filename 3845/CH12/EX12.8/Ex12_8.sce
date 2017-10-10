//Example 12.8
Q=0.120;//Flow rate (cm^3/s)
Q=Q*(10^-2)^3;//Flow rate (m^3/s)
r=0.150*10^-3;//Radius of needle (m)
l=2.50*10^-2;//Length of needle (m)
eta=1*10^-3;//Viscosity of saline solution(N.s/m^2)
P1=8;//Gauge pressure in vein (mm Hg)
P1=P1*133/1.00;//Gauge pressure in vein (N/m^2)
P2=[(8*eta*l*Q)/(%pi*r^4)]+P1;//Pressure required from Poiseuille's law (N/m^2)
printf('Pressure required at the needle''s entrance = %0.2e N/m^2',P2)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
