//Example 3.5
y_0;//Initial position (m)
y=-20;//Final position (m)
v_0=25;//Initial velocity (m/s)
theta_0=35;//Initial angle (deg)
v_0y=v_0*sind(theta_0);//y-component of initial velocity (m/s)
g=9.8;//Acceleration due to gravity (m/s^2)

p=[(-1/2*g) (v_0y) (y_0-y)];//Rearranging Equation 3.57 to get a quadratic equation with t as the variable
r=roots(p);//Finding roots of the polynomial
//The roots are complex encoded, this can be checked using 
//disp(isreal(r(1,1)))
//which gives 'F'
if real(r(1,1))<0//Using real part
    printf('a.Time taken to follow the path = %0.2f s',r(2,1))
    t=real(r(2,1));//Time (s)
else
    printf('a.Time taken to follow the path = %0.2f s',r(1,1))
    t=real(r(1,1));//Time (s)
end

v_x=v_0*cosd(theta_0);//x-component of velocity (m/s)
v_y=v_0y-g*t;//y-component of final velocity (m/s)
v=sqrt(v_x^2+v_y^2);//Magnitude of final velocity (m/s)
printf('\nb.Magnitude of rock''s velocity at impact = %0.1f m/s',v)
theta_v=atand(v_y/v_x);//Direction of resultant (deg)
printf('\n  Direction of rock''s velocity at impact = %0.1f deg',theta_v)
//Answer varies slightly in (c)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
