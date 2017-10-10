//Example 2.12
a_dry=-7;//Acceleration on dry concrete (m/s^2)
a_wet=-5;//Acceleration on wet concrete (m/s^2)
v_0=30;//Initial velocity (m/s)
v=0;//Final velocity (m/s)
x_0=0;//Initial position (m)
x_dry=(v^2-v_0^2)/(2*a_dry)+x_0;//Distance to stop on dry concrete (m)
printf('a.Distance to stop on dry concrete = %0.1f m',x_dry)
x_wet=(v^2-v_0^2)/(2*a_wet)+x_0;//Distance to stop on wet concrete (m)
printf('\nb.Distance to stop on wet concrete = %0.1f m',x_wet)
t_reaction=0.5;//Reaction time (s)
x_0_reaction=0;//Initial position at the time of traffic light turning red (m)
x_reaction=x_0_reaction+v_0*t_reaction;//Distance travelled during reaction time (m)
//Total stopping distance = x_dry(or x_wet)+x_reaction
printf('\nc.Distance to stop on dry concrete from the time the traffic light turns red = %0.1f m',x_dry+x_reaction)
printf('\n  Distance to stop on wet concrete from the time the traffic light turns red = %0.1f m',x_wet+x_reaction)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
