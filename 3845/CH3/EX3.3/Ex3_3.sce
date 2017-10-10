//Example 3.3
A=53;//Magnitude of vector A (m)
theta_A=20;//Direction of vector A (deg)
B=34;//Magnitude of vector B (m)
theta_B=63;//Direction of vector B (deg)
A_x=A*cosd(theta_A);//x-component of vector A (m)
B_x=B*cosd(theta_B);//x-component of vector B (m)
A_y=A*sind(theta_A);//y-component of vector A (m)
B_y=B*sind(theta_B);//y-component of vector B (m)
R_x=A_x+B_x;//x-component of resultant (m)
R_y=A_y+B_y;//y-component of resultant (m)
R=sqrt(R_x^2+R_y^2);//Magnitude of the resultant (m)
printf('Magnitude of the resultant = %0.1f m',R)
theta=atand(R_y/R_x);//Direction of the resultant (deg)
printf('\nDirection of the resultant = %0.1f deg',theta)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
