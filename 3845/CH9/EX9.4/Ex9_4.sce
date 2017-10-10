//Example 9.4
g=9.80;//Acceleration due to gravity (m/s^2)
w_a=2.50*g;//Weight of forearm, m*g, (N)
w_b=4.00*g;//Weight of load, m*g, (N)
r1=4*10^-2;//Distance of force exerted by biceps from elbow (m)
r2=16*10^-2;//Distance of CG of forearm from elbow (m)
r3=38*10^-2;//Distance of load from elbow (m)
F_B=(r2*w_a+r3*w_b)/r1;//Force exerted by biceps (N)
printf('Force exerted by biceps = %0.1f N',F_B)
ratio=F_B/(w_a+w_b);
printf('\nRatio of force exerted by biceps to the total weight = %0.2f',ratio)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
