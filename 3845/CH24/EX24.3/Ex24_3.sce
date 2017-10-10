//Example 24.3
rho=1000;//Density of tissue (kg/m^3)
d=0.8*10^-3;//Diameter of cornea (m)
A=%pi*d^2/4;//Area (m^2)
t=0.3*10^-6;//Thickness (m)
V=A*t;//Volume of tissue (m^3)
m=rho*V;//Mass of tissue evaporated (kg)
c=4186;//Specific heat of water (J/kg/K)
delta_T=100-34;//Change in temperature (C)
L_v=2256*10^3;//Latent heat of vaporization of water (J/kg)
Q_tot=m*(c*delta_T+L_v);//Energy absorbed (J)
printf('Total energy absorbed by the tissue = %0.0f*10^-9 kJ',Q_tot/1000/10^-9)
printf('\nDiscussion:')
ave_pow=Q_tot*400;//Average power if there are 400 bursts per second (W)
printf('\nAverage power if there are 400 laser bursts per second = %0.1f mW',ave_pow*1000)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

