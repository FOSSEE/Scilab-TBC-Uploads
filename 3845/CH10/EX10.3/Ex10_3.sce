//Example 10.3
omega_0=0;//Initial angular velocity (rad/s)
alpha=110;//Angular acceleration (rad/s^2)
t=2;//Time (s)
r=4.50*10^-2//Radius of reel (m)
omega=omega_0+alpha*t;//Final angular velocity (rad/s)
printf('a.Final angular velocity = %0.1f rad/s',omega)
v=r*omega;//Speed of fishing line (m/s)
printf('\nb.Speed of fishing line leaving the reel after 2.00s = %0.2f m/s',v)
theta=omega_0+1/2*alpha*t^2;//Angle taken through (rad)
theta1=theta/(2*%pi);//Revolutions (rev)
printf('\nc.Number of revolutions made by the reel = %0.1f rev',theta1)
x=r*theta;//Length of fishing line (m)
printf('\nd.Length of fishing line that comes out of the reel in this duration = %0.2f m',x)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

