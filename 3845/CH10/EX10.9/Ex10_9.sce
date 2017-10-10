//Example 10.9
l=4;//Length of each blade (m)
M=50;//Mass of each blade (kg)
omega=300;//Angular velocity (rpm)
omega=omega*2*%pi/60;//Angular velocity (rad/s)
I=4*M*l^2/3;//Moment of inertia (kg/m^2)
KE_rot=(1/2)*I*omega^2;//Rotational kinetic energy (J)
printf('a.Rotational kinetic energy = %0.2e J',KE_rot)
v=20;//Flight velocity (m/s)
m=1000;//Total loaded mass of the helicopter (kg)
KE_trans=(1/2)*m*v^2;//Translational kinetic energy (J)
printf('\nb.Translational kinetic energy = %0.2e J',KE_trans)
printf('\n  Ratio of translational kinetic energy to rotational kinetic energy = %0.3f',KE_trans/KE_rot)
g=9.8;//Acceleration due to gravity (m/s^2)
h=(1/2)*I*omega^2/(m*g);//Maximum height (m)
printf('\nc.Maximum height = %0.1f m',h)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
