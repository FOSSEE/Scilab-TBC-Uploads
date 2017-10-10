//Example 4.5
m=60;//Mass of the skier and equipment (kg)
theta=25;//Angle of inclination (deg)
g=9.8;//Acceleration due to gravity (m/s^2)
F_net_p=m*g*sind(theta);//Net force parallel to the slope (N)
a_p=F_net_p/m;//Acceleration (m/s^2)
printf('a.Acceleration (disregarding friction) = %0.2f m/s^2', a_p)
f=45;//Frictional force (N)
F_net_p_b=m*g*sind(theta)-f;//Net force parallel to the slope considering friction (N)
a_p_b=F_net_p_b/m;//Acceleration (m/s^2)
printf('\nb.Acceleration (considering friction) = %0.2f m/s^2', a_p_b)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
