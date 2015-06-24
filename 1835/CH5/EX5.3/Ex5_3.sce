//CHAPTER 5 ILLUSRTATION 3 PAGE NO 161
//TITLE:Inertia Force Analysis in Machines
clc
clear
pi=3.141
D=.3//          Diameter of steam engine in m
L=.5//          length of stroke in m
r=L/2
mR=100//        equivalent of mass of reciprocating parts in kg
N=200//         speed of engine in rpm
teeta=45//       angle of inclination of crank in degrees
p1=1*10^6//        gas pressure in N/m^2
p2=35*10^3//       back pressure in N/m^2
n=4//              ratio of crank radius to the length of stroke
//=================================
w=2*pi*N/60//           angular speed in rad/s
Fl=pi/4*D^2*(p1-p2)//     Net load on piston in N
Fi=mR*w^2*r*(cosd(teeta)+cosd(2*teeta)/(2*n))//   inertia force due to reciprocating parts
Fp=Fl-Fi//              Piston effort
T=Fp*r*(sind(teeta)+(sind(2*teeta))/(2*(n^2-(sind(teeta))^2)^.5))
printf('Piston effort = %.3f N\n Turning moment on the crank shaft = %.3f N-m',Fp,T)
