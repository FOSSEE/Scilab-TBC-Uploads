//CHAPTER 5 ILLUSRTATION 6 PAGE NO 165
//TITLE:Inertia Force Analysis in Machines
clc
clear
pi=3.141
D=.25//             diameter of horizontal steam engine in m
N=180//             speed of the engine in rpm
d=.05//             diameter of piston in m
P=36000//            power of the engine in watts
n=3//                ration of length of connecting rod to the crank radius
p1=5.8*10^5//         pressure on cover end side in N/m^2
p2=0.5*10^5//          pressure on crank end side in N/m^2
teeta=40//            angle of inclination of crank in degrees
m=45//                mass of flywheel in kg
k=.65//               radius of gyration in m
//==============================
Fl=(pi/4*D^2*p1)-(pi/4*(D^2-d^2)*p2)//          load on the piston in N
phi=asind(sind(teeta)/n)//                      angle of inclination of the connecting rod to the line of stroke in degrees
r=1.6*D/2
T=Fl*sind(teeta+phi)/cosd(phi)*r//              torque exerted on crank shaft in N-m
Fb=Fl*cosd(teeta+phi)/cosd(phi)//              thrust on the crank shaft bearing in N
TR=P*60/(2*pi*N)//                              steady resisting torque in N-m
Ts=T-TR//                                       surplus torque available in N-m
a=Ts/(m*k^2)//                                   acceleration of the flywheel in rad/s^2
printf('Torque exerted on the crank shaft= %.3f N-m\n Thrust on the crank shaft bearing= %.3f N\n Acceleration of the flywheel= %.3f rad/s^2',T,Fb,a)
