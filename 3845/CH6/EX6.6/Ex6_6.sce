//Example 6.6
G=6.67*10^-11;//Universal gravitational constant (N.m^2/kg^2)
M=5.98*10^24;//Mass of the Earth (kg)
r=3.84*10^8;//Radius of Moon's orbit (m)
g=G*M/r^2;//Acceleration due to gravity (m/s^2)
printf('a.Acceleration due to Earth''s gravity at the distance of the moon = %0.2e m/s^2',g)
delta_theta=2*%pi;//One complete rotation of Moon's orbit (rad)
delta_t=27.3*(1*24*60*60);//Period to make one complete rotation of Moon's orbit = 27.3 days,converted to seconds
omega=delta_theta/delta_t;//Angular velocity (rad/s)
a_c=r*omega^2;//Centripetal acceleration (m/s^2)
printf('\nb.Centripetal acceleration = %0.2e m/s^2',a_c)
printf('\nDiscussion: Centripetal acceleration found in (b.) differs from acceleration due to Earth''s gravity found in (a.) \nby %0.2f%%',(a_c-g)/g*100)
//Discussion : In agreement with answer in textbook; less than 1% 
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
