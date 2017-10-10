//Example 10.7
M=50;//Mass of the merry-go-round (kg)
R=1.50;//Radius of the merry-go-round (m)
F=250;//Force exerted (N)
theta=90;//Angle (deg)
tau=R*F*sind(theta);//Torque (N.m)
I=1/2*M*R^2;//Moment of inertia (kg.m^2)
alpha1=tau/I;//Angular acceleration (rad/s^2)
printf('a.Angular acceleration when no one is on the merry-go-round = %0.2f rad/s^2',alpha1)
M1=18;//Mass of the child (kg)
R1=1.25;//Distance of child from the center (m)
I_c=M1*R1^2;//Moment of inertia of the child (kg.m^2)
I=I_c+I;//Total moment of inertia (kg.m^2)
alpha2=tau/I;//Angular acceleration (rad/s^2)
printf('\nb.Angular acceleration when the child is on the merry-go-round = %0.2f rad/s^2',alpha2)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
