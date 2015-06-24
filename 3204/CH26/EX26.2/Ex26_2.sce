// 1 APPENDIX. Ex no 2. Page no 639
//Initilizatin of variable
F=10 //N
P_1=[2,4,3] 
P_2=[1,-5,2]

//Calculations
d_x=P_2(1)-P_1(1) 
d_y=P_2(2)-P_1(2)
d_z=P_2(3)-P_1(3)
d=sqrt(d_x^2+d_y^2+d_z^2)
Fx=(F/d)*d_x //N
Fy=(F/d)*d_y //N
Fz=(F/d)*d_z //N
//Direction cosines
l=Fx/F
m=Fy/F
n=Fz/F
//Angles
theta_x=acosd(l) //degrees
theta_y=acosd(m) //degrees
theta_z=acosd(n) //degrees

//Result
clc
printf("The force in vector notation is %fi%fj%fk\n",Fx,Fy,Fz)
printf("Thetax=%f degrees,Thetay=%f degrees,Thetaz=%f degrees",theta_x,theta_y,theta_z)  
