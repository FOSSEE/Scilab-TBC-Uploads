//Example 14.3
m_Al=0.5;//Mass of aluminum pan (kg)
c_Al=900;//Specific heat of aluminum (J/kg.C)
T_Al=150;//Initial temperature of pan (C)
m_W=0.25;//Mass of water (kg)
c_W=4186;//Specific heat of water (J/kg.C)
T_W=20;//Initial temperature of water (C)
T_f=[(m_Al*c_Al*T_Al)+(m_W*c_W*T_W)]/(m_Al*c_Al+m_W*c_W);//Final temperature, See Equation 14.15 (C)
printf('Final temperature = %0.1f C',T_f)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
