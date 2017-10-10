//Example 10.15
m=50*10^-3;//Mass of the disc (kg)
v=30;//Initial velocity of the disc (m/s)
M=2;//Mass of the stick (kg)
r=1.2;//Length of the stick (m)
I_prime=(m+M/3)*r^2;//Moment of inertia of the stick and disc stuck together, See Equation 10.128 (kg.m^2)
omega_prime=m*v*r/I_prime;//Angular velocity (rad/s)
printf('a.Angular velocity of the two (stick and disc) after collision = %0.2f rad/s',omega_prime)
KE=(1/2)*m*v^2;//Initial kinetic energy (translational) (J)
printf('\nb.Initial kinetic energy = %0.1f J',KE)
KE_prime=(1/2)*I_prime*omega_prime^2;//Final kinetic energy (rotational) (J)
printf('\n  Final kinetic energy = %0.2f J',KE_prime)
p=m*v;//Linear momentum before collision (kg.m/s)
printf('\nc.Total linear momentum before collision = %0.2f kg.m/s',p)
v_prime=r*omega_prime;//New velocity of the disk (m/s)
p_prime=(m+M/2)*v_prime;//Linear momentum after collision (kg.m/s)
printf('\n  Total linear momentum after collision = %0.2f kg.m/s',p_prime)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
