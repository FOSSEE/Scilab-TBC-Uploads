//CHAPTER 6 ILLUSRTATION 1 PAGE NO 175
//TITLE:Turning Moment Diagram and Flywheel
clc
clear
k=1//         radius of gyration of flywheel in m
m=2000//       mass of the flywheel in kg
T=1000//      torque of the engine in Nm
w1=0//        speedin the begining
t=10//        time duration
//==============================
I=m*k^2//         mass moment of inertia in kg-m^2
a=T/I//           angular acceleration of flywheel in rad/s^2
w2=w1+a*t//       angular speed after time t in rad/s
K=I*w2^2/2//     kinetic energy of flywheel in Nm
//==============================
printf('Angular acceleration of the flywheel= %.3f rad/s^2\n Kinetic energy of flywheel= %.3f N-m',a,K)
