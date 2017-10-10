//Example 23.4
//Also see Example 23.3
delta_theta=%pi/2;//1/4th of a revolution (rad)
delta_t=15*10^-3;//Time (s)
omega=delta_theta/delta_t;//Angular velocity (rad/s)
//Angular velocity in rad/s can be converted to rpm by multiplying by (60/(2*%pi)). Rpm may be found to be 1000 in this example
N=200;//Number of loops, See Example 23.3
r=5*10^-2;//Radius of coil (m), See Example 23.3
A=%pi*r^2;//Area of loop (m^2), See Example 23.3
B=1.25;//Magnetic field strength (T), See Example 23.3
emf_0=N*A*B*omega;//Maximum emf (V)
printf('Maximum emf, emf_0 = %0.1f V',emf_0)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
