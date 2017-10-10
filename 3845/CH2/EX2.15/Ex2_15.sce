//Example 2.15
y_0=0;//Initial position (m)
y_1=-5.10;//Position at which velocity is to be found (m)
v_0=-13.0;//Initial velocity (m/s)
g=9.8;//Acceleration due to gravity (m/s^2)
a=-g;//Acceleration (m/s^2)
v=sqrt(v_0^2+2*a*(y_1-y_0));//Velocity at position y_1(m/s), See Equation 2.77
printf('Velocity when 5.10m below the starting point = %0.1f m/s',-v)
//Negative root of 'v' is to be chosen as the rock is thrown downwards
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
