//Example 2.18
t=[0 5 10 15 20 25 30]';//Time (s)
x=[200 338 600 988 1500 2138 2900]';//Displacement (m)

plot(t,x);
xlabel('Time, t (s)')
ylabel('Displacement, x (m)')

//Using the endpoints of the tangents as given in the textbook
t1=19;//Time (s)
x1=1300;//Displacement at t1 (m)
t2=32;//Time (s)
x2=3120;//Displacement at t2 (m)
delta_x_Q=x2-x1;//Change in displacement (m)
delta_t_Q=t2-t1;//Change in time (s)
v_Q=delta_x_Q/delta_t_Q;//Slope (instantanteous velocity) at Q (m/s)
printf('Velocity at 25s = %0.1f m/s',v_Q)
plot([25],[interp1(t,x,25)],'d');//To mark point Q
xstring(24,2200,'Q');//Label point Q

//The above steps use the data given in the textbook
//The slope at point Q may be determined as follows if the 
//t1=25.1;//Choose t1 greater than but nearly equal to 25s (s)
//x1=interp1(t,x,t1);//Displacement at t1 (m)
//t2=24.9;//Choose t2 lesser than but nearly equal to 25s (s)
//x2=interp1(t,x,t2);//Displacement at t2 (m)
//delta_x_Q=x2-x1;//Change in displacement (m)
//delta_t_Q=t2-t1;//Change in time (s)
//v_Q=delta_x_Q/delta_t_Q;//Slope (instantanteous velocity) at Q (m/s)
//printf('\nAlternative method (when tangent endpoints are not given):\nVelocity= %0.1f m/s',v_Q)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
