//Example 14.1
T_f=80;//Final temperature (C)
T_i=20;//Initial temperature (C)
delta_T=T_f-T_i;//Temperature change (C)
rho=1000;//Density of water (kg/m^3)
V=0.250;//Volume (L)
V=V*10^-3;//Volume (m^3)
m_W=rho*V;//Mass of water (kg)
c_W=4186;//Specific heat of water (J/kg.C), See Table 14.1
Q_W=m_W*c_W*delta_T/1000;//Heat required by water(kJ)
printf('a.Heat required by water= %0.1f kJ',Q_W)
m_Al=0.5;//Mass of aluminum (kg)
c_Al=900;//Specific heat of aluminum (J/kg.C), See Table 14.1
Q_Al=m_Al*c_Al*delta_T/1000;//Heat required by aluminum (kJ)
printf('\n  Heat required by pan = %0.1f kJ',Q_Al)
Q_total=Q_W+Q_Al;//Total heat transferred (kJ)
printf('\n  Total Heat required = %0.1f kJ',Q_total)
printf('\nb.Percentage of heat used to heat the pan = %0.1f%%',Q_Al/Q_total*100)
printf('\nc.Percentage of heat used to heat the water = %0.1f%%',Q_W/Q_total*100)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

