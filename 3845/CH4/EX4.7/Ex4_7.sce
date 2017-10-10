//Example 4.7
Fx=2.7*10^5;//Force exerted in the x-direction (N)
Fy=3.6*10^5;//Force exerted in the y-direction (N)
m=5*10^6;//Mass of the barge (kg)
a=7.5*10^-2;//Acceleration (m/s^2)
theta=53.1;//Angle (deg)
F_app=sqrt(Fx^2+Fy^2);//Resultant applied force (N)
theta=atand(Fy/Fx);//Direction of resultant applied force (deg)
F_net=m*a;//Net external force (N)
F_D=F_app-F_net;//Drag force (N)
printf('Drag force exerted by water = %0.1e N',F_D)
printf('\nDirection of the drag force is opposite to that of the applied force.')
//Direction of drag force, theta_F_D=53 deg south of west
//also it may be noted that if theta_F_D is to be measured from the same reference axis as theta 
//theta_F_D=theta+180;
//if theta_F_D>360
//   theta_F_D=theta_F_D-360;
//end
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
