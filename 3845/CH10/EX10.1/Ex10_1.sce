//Example 10.1
delta_omega=250;//Angular velocity (rpm)
delta_omega=250*2*%pi/60;//Angular velocity (rad/s)
delta_t=5.00;//Time taken (s)
alpha=delta_omega/delta_t;//Angular acceleration (rad/s^2)
printf('a.Angular acceleration = %0.2f rad/s^2',alpha)
delta_omega_b=-delta_omega;//Angular velocity (rad/s)
alpha_b=-87.3;//Angular acceleration (rad/s^2)
delta_t_b=delta_omega_b/alpha_b;//Time taken (s)
printf('\nb.Time taken for the wheel to stop = %0.3f s',delta_t_b)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
