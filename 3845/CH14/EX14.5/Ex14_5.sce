//Example 14.5
A=0.950;//Area (m^2)
d=2.5*10^-2;//Thickness (m)
T1=0;//Temperature inside the box (C)
T2=35;//Temperature outside the box (C)
t=24*60*60;//Time, convert 1 day to seconds (s)
k=0.010;//Thermal conductivity of styrofoam (J/s.m.C)
rate=[k*A*(T2-T1)]/d;//Rate of conductive heat transfer (J/s)
Q=rate*t;//Heat energy transferred (J)
L_f=334*10^3;//Latent heat of fusion of water (J/kg)
m=Q/L_f;//Mass of ice melted (kg)
printf('Amount of ice that melts in one day = %0.2f kg',m)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
