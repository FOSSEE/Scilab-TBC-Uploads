//Example 3.8
v_0y=0;//Initial vertical velocity (m/s)
g=9.8;//Acceleration due to gravity (m/s^2)
y_0=0;//Initial position (m)
y=-1.5;//Final position (m)
v_y=-sqrt(v_0y^2-2*g*(y-y_0));//Final vertical velocity (m/s)
//The negative root is taken as the velocity is directed downward
printf('a.Velocity of the coin relative to the plane = %0.2f m/s',v_y)
v_x=260;//Horizontal velocity (m/s)
v=sqrt(v_x^2+v_y^2)//Velocity relative to the Earth (m/s)
printf('\nb.Velocity of the coin relative to the Earth = %0.2f m/s',v)
theta=atand(v_y/v_x);//Direction of velocity (deg)
printf('\n  Direction of the velocity of the coin relative to the Earth = %0.2f deg',theta)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
