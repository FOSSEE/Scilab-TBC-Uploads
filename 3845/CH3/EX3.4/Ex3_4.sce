//Example 3.4
y_0=0;//Initial position (m)
v_y=0;//Final velocity (m/s)
v_0=70;//Initial velocity (m/s)
theta_0=75;//Initial angle (deg)
v_0y=v_0*sind(theta_0);//y-component of initial velocity (m/s)
g=9.8;//Acceleration due to gravity (m/s^2)
y=(v_0y^2-v_y^2)/(2*g)+y_0;//Rearranging Equation 3.45 for maximum height (m)
printf('a.Maximum height = %0.1f m',y)
t=(y-y_0)/(1/2*(v_0y+v_y));//Rearranging Equation 3.37 for time (s)
printf('\nb.Time between launch and explosion of shell = %0.2f s',t)
x_0=0;//Initial horizontal distance (m)
v_x=v_0*cosd(theta_0);//x-component of initial velocity (m/s)
x=x_0+v_x*t;//Rearranging Equation 3.34 for horizontal displacement (m)
printf('\nc.Horizontal displacement of the shell when it explodes = %0.1f m',x)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
