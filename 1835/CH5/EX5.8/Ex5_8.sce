//CHAPTER 5 ILLUSRTATION 8 PAGE NO 166
//TITLE:Inertia Force Analysis in Machines
//figure 5.4
clc
clear
pi=3.141
D=.25//              diameter of vertical cylinder of diesel engine in m
L=.40//              stroke length in m
r=L/2
n=4
N=300//               speed of the engine in rpm
teeta=60//            angle of inclination of crank in degrees
mR=200//               mass of reciprocating parts in kg
g=9.81//               acceleration due to gravity
l=.8//                 length of connecting rod in m
c=14//             compression ratio=v1/v2
p1=.1*10^6//           suction pressure in n/m^2
i=1.35//               index of the law of expansion and compression 
//==============================================================
Vs=pi/4*D^2*L//            swept volume in m^3
w=2*pi*N/60//                 angular speed in rad/s
Vc=Vs/(c-1)
V3=Vc+Vs/10//            volume at the end of injection of fuel in m^3
p2=p1*c^i//              final pressure in N/m^2
p3=p2//                  from figure
x=r*((1-cosd(teeta)+(sind(teeta))^2/(2*n)))//          the displacement of the piston when the crank makes an angle 60 degrees with T.D.C
Va=Vc+pi*D^2*x/4
pa=p3*(V3/Va)^i
p=pa-p1//          difference of pressues on 2 sides of piston in N/m^2
Fl=p*pi*D^2/4//     net load on piston in N
Fi=mR*w^2*r*(cosd(teeta)+cosd(2*teeta)/(n))//       inertia force due to reciprocating parts in N
Fp=Fl-Fi+mR*g//              piston effort in N
phi=asind(sind(teeta)/n)//     angle of inclination of the connecting rod to the line of stroke in degrees
T=Fp*sind(teeta+phi)/cosd(phi)*r//              torque exerted on crank shaft in N-m
printf('Effective turning moment on the crank shaft= %.3f N-m',T)
