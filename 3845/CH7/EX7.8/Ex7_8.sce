//Example 7.8
k=250;//Force constant of spring (N/m)
m=0.100;//Mass of car (kg)
x_i=0.0400;//Initial compression of the sping (m)
v_f_a=sqrt(k/m)*x_i;//Final velocity (m/s)
printf('a.Final speed (before the start of the slope) = %0.2f m/s',v_f_a)
h_f=0.180;//Final height (m)
v_f_b=sqrt((k*x_i^2/m)-(2*g*h_f));//Final velocity (m/s)
printf('\nb.Final speed (at the top of the slope) = %0.3f m/s',v_f_b)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
