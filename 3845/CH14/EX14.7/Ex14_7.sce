//Example 14.7
rho=1.29;//Density of air (kg/m^3)
V=12*18*3;//Volume (m^3)
m=rho*V;//Mass of air (kg)
c=1000;//Specific heat of air (J/kg.C), See Table 14.4
delta_T=10;//Change in temperature (C)
Q=m*c*delta_T;//Heat transferred (J)
t=30*60;//Time,minutes converted to seconds,(s)
rate=Q/t;//Heat transfer rate(W)
printf('Rate of heat transfer = %0.2f kW',rate/1000)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
