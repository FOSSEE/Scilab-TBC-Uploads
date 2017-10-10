//Example 10.14
omega=0.8;//Angular velocity (rev/s)
I=2.34;//Moment of inertia when arms are extended (kg.m^2)
I_prime=0.363;//Moment of inertia when arms are close to the body (kg.m^2)
m=60;//Mas of the skater (kg)
omega_prime=I/I_prime*omega;//Angular velocity when arms are pulled in (rev/s)
printf('a.Angular velocity when arms are pulled in = %0.2f rev/s',omega_prime)
KE_rot=(1/2)*I*(omega*2*%pi)^2;//Rotational kinetic energy when arms are extended (J), also convert omega to units of rad/s
printf('\nb.Initial rotational kinetic energy (extended arms) = %0.1f J',KE_rot)
KE_rot_prime=(1/2)*I_prime*(omega_prime*2*%pi)^2;//Rotational kinetic energy when arms are pulled in (J), also convert omega to units of rad/s
printf('\n  Final rotational kinetic energy (arms pulled in) = %0.1f J',KE_rot_prime)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
