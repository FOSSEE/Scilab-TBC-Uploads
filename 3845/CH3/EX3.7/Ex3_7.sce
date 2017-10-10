//Example 3.7
v_tot=38;//Total velocity (m/s)
v_totx=v_tot*cosd(110);//x-component of total velocity (m/s)
v_toty=v_tot*sind(110);//y-component of total velocity (m/s)
v_p=45;//Velocity of the plane (m/s)
v_wx=v_totx;//x-component of wind velocity, See Equation 3.85 (m/s)
v_wy=v_toty-v_p;//y-component of wind velocity, See Equation 3.87 (m/s)
v_w=sqrt(v_wx^2+v_wy^2);//Magnitude of wind velocity (m/s)
printf('Magnitude of wind velocity = %0.1f m/s',v_w)
theta=atand(v_wy/v_wx);//Direction of wind velocity (deg)
printf('\nDirection of wind velocity = %0.1f deg',theta)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
