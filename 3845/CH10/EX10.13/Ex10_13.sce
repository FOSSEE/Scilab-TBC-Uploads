//Example 10.13
F=2000;//Force exerted (N)
r=2.20*10^-2;//Lever arm (m)
net_tau=r*F;//Net torque (N.m)
I=1.25;//Moment of inertia (kg.m^2)
alpha=net_tau/I;//Angular acceleration (rad/s^2)
printf('a.Angular acceleration of the leg =%0.1f rad/s^2',alpha)
theta=1;//Angular displacement (rad)
omega_0=0;//Initial angular velocity (rad/s)
omega=sqrt(omega_0^2+2*alpha*theta);//Final angular velocity (rad/s)
KE_rot=(1/2)*I*omega^2;//Rotational kinetic energy (J)
printf('\nb.Rotational kinetic energy of the leg  = %0.1f J',KE_rot)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
