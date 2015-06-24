//CHAPTER 5 ILLUSRTATION 2 PAGE NO 161
//TITLE:Inertia Force Analysis in Machines
clc
clear
PI=3.141
r=.3//                 length of crank in metres
l=1.5//                length of connecting rod in metres
N=180//                speed of rotation in rpm
teeta=40//             angle of inclination of crank in degrees
//============================
n=l/r
w=2*PI*N/60//        angular speed in rad/s
Vp=w*r*(sind(teeta)+sind(2*teeta)/(2*n))//               velocity of piston in m/s
fp=w^2*r*(cosd(teeta)+cosd(2*teeta)/(2*n))//            acceleration of piston in m/s^2
costeeta1=(-n+(n^2+4*2*1)^.5)/(2*2)
teeta1=acosd(costeeta1)//                      position of crank from inner dead centre position for zero acceleration of piston
//===========================
printf('Velocity of Piston = %.3f m/s\n Acceleration of piston = %.3f m/s^2\n position of crank from inner dead centre position for zero acceleration of piston= %.3f degrees',Vp,fp,teeta1)
