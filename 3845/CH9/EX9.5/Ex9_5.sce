//Example 9.5
m_ub=55.0;//Mass of upper body (kg)
m_box=30.0;//Mass of box (kg)
r_ub=35*10^-2;//Distance of CG of upper body from pivot (m)
r_box=50*10^-2;//Distance of CG of box from pivot (m)
r_B=8*10^-2;//Distance of force F_B from pivot (m)
g=9.80;//Acceleration due to gravity (m/s)
F_B=((r_ub*m_ub*g)+(r_box*m_box*g))/r_B;//Force in the back muscles (N)
printf('a.Force in the back muscles = %0.2e N',F_B)
ratio=F_B/(m_ub*g+m_box*g);
printf('\nRatio of the force in the back muscles to the weight of the upper body plus the load = %0.2f',ratio)
/////////////////////////////////////
theta=29;//Direction of F_B (deg)
F_Vy=(m_ub*g)+(m_box*g)+F_B*sind(theta);//Vertical component of force on vertebrae (N)
F_Vx=F_B*cosd(theta);//Horizontal component of force on vertebrae (N)
F_V=sqrt(F_Vx^2+F_Vy^2);//Force on vertebrae (N)
printf('\nb.Force exerted by vertebrae = %0.2e N',F_V)
THETA=atand(F_Vy/F_Vx);//Direction of F_V (deg)
printf('\nDirection of force exerted by vertebrae = %0.1f deg',THETA)
ratio1=F_V/(m_ub*g+m_box*g);
printf('\nRatio of the force exerted by the vertebrae to the weight of the upper body plus the load = %0.2f',ratio1)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
