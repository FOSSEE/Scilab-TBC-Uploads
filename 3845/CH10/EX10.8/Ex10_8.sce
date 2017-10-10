//Example 10.8
r=0.320;//Radius of grindstone
F=200;//Force exerted (N)
theta=1;//Angle taken through (rad)
net_tau=r*F;//Net torque (N.m)
net_W=net_tau*theta;//Net work (J)
printf('a.Net work done = %0.1f J',net_W)
M=85;//Mass of grindstone (kg)
omega_0=0;//Initial angular velocity (rad/s)
I=1/2*M*r^2;//Moment of inertia (kg.m^2)
alpha=net_tau/I;//Angular acceleration (rad/s^2)
omega=sqrt(omega_0^2+2*alpha*theta);//Final angular velocity (rad/s)
printf('\nb.Final angular velocity = %0.2f rad/s',omega)
KE_rot=1/2*I*omega^2;//Rotational kinetic energy (J)
printf('\nc.Final rotational kinetic energy = %0.1f J',KE_rot)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
