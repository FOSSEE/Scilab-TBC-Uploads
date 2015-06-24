//CHAPTER 5 ILLUSRTATION 7 PAGE NO 166
//TITLE:Inertia Force Analysis in Machines
clc
clear
pi=3.141
D=.25//              diameter of vertical cylinder of steam engine in m
L=.45//              stroke length in m
r=L/2
n=4
N=360//               speed of the engine in rpm
teeta=45//            angle of inclination of crank in degrees
p=1050000//              net pressure in N/m^2
mR=180//               mass of reciprocating parts in kg
g=9.81//               acceleration due to gravity
//========================
Fl=p*pi*D^2/4//               force on piston due to steam pressure in N
w=2*pi*N/60//                 angular speed in rad/s
Fi=mR*w^2*r*(cosd(teeta)+cosd(2*teeta)/(n))//   inertia force due to reciprocating parts in N
Fp=Fl-Fi+mR*g//              piston effort in N
phi=asind(sind(teeta)/n)//     angle of inclination of the connecting rod to the line of stroke in degrees
T=Fp*sind(teeta+phi)/cosd(phi)*r//              torque exerted on crank shaft in N-m
printf('Effective turning moment on the crank shaft= %.3f N-m',T)
