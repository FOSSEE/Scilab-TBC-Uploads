//CHAPTER 5 ILLUSRTATION 1 PAGE NO 160
//TITLE:Inertia Force Analysis in Machines
clc
clear
pi=3.141
r=.3//          radius of crank in m
l=1//           length of connecting rod in m
N=200//         speed of the engine in rpm
n=l/r
//===================
w=2*pi*N/60//             angular speed in rad/s
teeta=acosd((-n+((n^2)+4*2*1)^.5)/(2*2))//         angle of inclination of crank in degrees
Vp=w*r*(sind(teeta)+(sind(2*teeta))/n)//           maximum velocity of the piston in m/s
printf('Maximum velocity of the piston = %.3f m/s',Vp)
