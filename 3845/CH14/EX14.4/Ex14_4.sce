//Example 14.4
m_ice=3*6;//Mass of ice cubes (g)
m_ice=m_ice/1000;//Mass of ice cubes (kg)
L_f=334000;//Latent heat of fusion of water (J/kg)
c_W=4186;//Specific heat of water (and soda) (J/kg.C)
T_ice=0;//Initial temperature of ice cubes (C)
m_soda=0.25;//Mass of soda (kg)
T_soda=20;//Initial temperature of soda (C)
T_f=[(m_soda*c_W*T_soda)-(m_ice*L_f)]/[(m_soda+m_ice)*c_W];//Final temperature after derivation (C)
printf('Final temperature = %0.2f C',T_f)
//An error of more than 2% due to round off error  
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
