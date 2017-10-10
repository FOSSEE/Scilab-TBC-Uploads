//Example 10.12
F=2.5;//Force (N)
r=0.26;//Radius of the lazy Susan tray (m)
net_tau=r*F;//Net torque (N.m)
delta_t=0.15;//Time (s)
delta_L=net_tau*delta_t;//Change in angular momentum (kg.m^2/s)
L=delta_L;//Final angular momentum since initial angular momentum is zero (kg.m^2/s)
printf('a.Final angular momentum = %0.2e kg.m^2/s',L)
M=4;//Mass of the lazy Susan (kg)
I=1/2*M*r^2;//Moment of inertia (kg.m^2)
omega=L/I;//Angular velocity (rad/s)
printf('\nb.Final angular velocity = %0.3f rad/s',omega)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
