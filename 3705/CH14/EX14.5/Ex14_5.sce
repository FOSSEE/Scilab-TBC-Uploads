
clear//

//Variable Declaration
Ix_bar=37.37*10**6 //Moment of inertia in mm^4
Iy_bar=21.07*10**6 //Moment of inertia in mm^4
Ixy_bar=-16.073*10**6 //Moment of inertia in mm^4

//Calculations
b=(Ix_bar+Iy_bar)*0.5 //Parameter for the circle in mm^4
R=sqrt(((Ix_bar-Iy_bar)*0.5)**2+Ixy_bar**2) //Radius of the Mohr's Circle in mm^4

//Part 1
I1=b+R //MI in mm^4
I2=b-R //MI in mm^4
theta1=asin(abs(Ixy_bar)/R)*180*%pi**-1*0.5 //Angle in degrees
theta2=theta1+90 //Angle in degrees

//Part 2
alpha=(100-theta1*2)*0.5 //Angle in degrees
Iu=(b)+R*(cos(alpha*%pi*180**-1)) //MI in mm^4

Iv=(b)-R*(cos(alpha*%pi*180**-1)) //MI in mm^4

Iuv=R*sin(2*alpha*%pi*180**-1) //MI in mm^4

//Result
printf("\n The Principal Moment of inertias are as follows")
printf("\n I1= %0.0f mm^4 and I2= %0.0f mm^4",I1,I2)
printf("\n Princial direction are theta1= %0.1f degrees theta2= %0.1f degrees" ,theta1,theta2)
printf("\n The moment of inertia along the uv-axis is %0.0f mm^4"  ,Iuv)
