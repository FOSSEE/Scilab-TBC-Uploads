//Example 11.8
m_st=1*10^7;//Mass of steel (kg)
rho_st=7.8*10^3;//Density of steel (kg/m^3), See Table 11.1
V_st=m_st/rho_st;//Volume of steel (m^3)
rho_w=1*10^3;//Density of water (kg/m^3), See Table 11.1
V_w=V_st;//Volume of water displaced (m^3)
m_w=rho_w*V_w;//Mass of water displaced (kg)
g=9.80;//Acceleration due to gravity (m/s^2)
w_w=m_w*g;//Weight of water displaced (N)
F_B=w_w;//Buoyant force (N)
printf('a.Buoyant force = %0.1e N',F_B)

V_w1=1*10^5;//Volume of water displaced (m^3)
m_w1=rho_w*V_w1;//Mass of water displaced (kg)
w_w1=m_w1*g;//Weight of water displaced (N)
F_B1=w_w1;//Buoyant force (N)
printf('\nb.Buoyant force = %0.2e N',F_B1)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
