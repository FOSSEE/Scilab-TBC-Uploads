//Example 10.5
r=0.350;//Radius of wheel (m)
alpha=0.250;//Angular acceleration (rad/s^2)
theta=200;//Revolutions (rev)
theta=theta*2*%pi;//Angle taken through (rad)
x=r*theta;//Distance (m)
printf('a.Distance the train has moved = %0.1f',x)
omega_0=0;//Initial angular velocity (rad/s)
omega=sqrt(omega_0^2+2*alpha*theta)//Final angular velocity (rad/s)
printf('\nb.Final angular velocity of the wheels= %0.1f rad/s',omega)
v=r*omega;//Linear velocity of the train (m/s)
printf('\n  Linear velocity of the train = %0.2f m/s',v)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
