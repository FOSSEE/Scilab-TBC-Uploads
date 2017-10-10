//Example 8.5
m1=0.150;//Mass of puck (kg)
m2=70.0;//Mass of goalie (kg)
v1=35.0;//Initial velocity of puck (m/s)
v=(m1*v1)/(m1+m2);//Final velocity from conservation of momentum (m/s)
printf('a.Recoil velocity = %0.2e m/s',v)
KE_int1=1/2*m1*v1^2;//Internal kinetic energy before collision (J)
KE_int2=1/2*(m1+m2)*v^2;//Internal kinetic energy after collision (J)
delta_KE=KE_int2-KE_int1;//Change in internal kinetic energy (J)
printf('\nb.Change in internal kinetic energy = %0.1f J',delta_KE)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
