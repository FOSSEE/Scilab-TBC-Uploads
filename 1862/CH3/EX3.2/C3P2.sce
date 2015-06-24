
//To Find the force to be apply on sled
//referring to data from problem 3.1 on page no.48
 clc;
 
 //Given :
 //refer to figure 3-7(a) and3-7(b) from page no. 49
m =240; //kg
d =2.3; //distance travelled in m
Fsw =130; //force in N
 
//solution:
//calculating acceleration
//applying newton's second law
ax1 = Fsw/m //m/s^2
//calculating time
//applying kinematic equation
t =  sqrt((2*d)/ax1) // s e c o n d s
//calculating velocity
//applying one dimensinal kinematic equation
vx =ax1*t; //m/ s
v0x = -(ax1*t); //m/s 
t2 = 4.5 // s e c o n d s
// calculating first acceleration using equation vx = v0x + ax*t 
ax =(v0x-vx)/t2; //m/ s ^2
ax = nearfloat("succ",0.71)

// calculating force
//applying newton's second law
F_dashsw = m*ax; // N
F_dashsw = nearfloat("pred",-170)
F_dashsw1 = F_dashsw/(0.4535*9.81)

printf ("\n\n Acceleration ax1 = \n\n %.2f m/s^2" ,ax1)
printf ("\n\n Time t = \n\n %.1f s" ,t)
printf ("\n\n Final velocity vx = \n\n %.1f m/s" ,vx)
printf ("\n\n Final velocity v0x = \n\n %.1f m/s" ,v0x)
printf ("\n\n Acceleration ax = \n\n %.2f m/s^2" ,ax)
printf ("\n\n Constant force F_dashsw = \n\n %3i N" ,F_dashsw);
printf ("\n\n Constant force F_dashsw1 = \n\n %2i lb" ,F_dashsw1);
