//Example 3.6
v_river=1.2;//Velocity of river current (m/s)
v_x=v_river;//x-component of velocity (m/s)
v_boat=0.75;//Velocity of boat (m/s)
v_y=v_boat;//y-component of velocity (m/s)
v_tot=sqrt(v_x^2+v_y^2);//Magnitude of resultant velocity (m/s)
printf('Magnitude of the boat''s velocity relative to the observer on the shore = %0.2f m/s',v_tot)
theta=atand(v_y/v_x);//Direction of resultant velocity (deg)
printf('\nDirection of the boat''s velocity relative to the observer on the shore = %0.1f deg',theta)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
