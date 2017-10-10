//Example 9.2
theta=90;//Angle (deg)
r_r=0.900;//Distance of right hand from left hand (m)
r_cg=0.600;//Distance of CG from left hand (m)
m=5.00;//Mass of the pole (kg)
g=9.80;//Acceleration due to gravity (m/s^2)
F_R=(r_cg*m*g*sind(theta))/(r_r*sind(theta));//Force exerted by right hand (N)
printf('a.Force exerted by right hand = %0.1f N',F_R)
F_L=m*g-F_R;//Force exerted by left hand (N)
printf('\nb.Force exerted by left hand = %0.1f N',F_L)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
