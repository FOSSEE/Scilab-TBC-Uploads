//Example 9.1
m1=26.0;//Mass of 1st child (kg)
m2=32.0;//Mass of 2nd child (kg)
r1=1.60;//Distance of 1st child from pivot (m)
r_p=0;//Distance of supporting force of pivot from pivot (m)
g=9.80;//Acceleration due to gravity (m/s^2)
theta=90;//Angle (deg)
//Torque tau=r*(m*g)*sind(theta)
//Torque due to supporting force of pivot is zero as r_p=0
//For equilibrium,sum of torques must equal zero
r2=(r1*m1*g*sind(theta))/(m2*g*sind(theta));//Distance of 2nd child from pivot (m)
printf('a.Distance of 2nd child from pivot = %0.2f m',r2)
F_p=(m1*g)+(m2*g);//Supporting force of pivot (N)
printf('\nb.Supporting force of pivot = %0.1f N',F_p)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
