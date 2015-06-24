//CHAPTER 5 ILLUSRTATION 4 PAGE NO 162
//TITLE:Inertia Force Analysis in Machines
clc
clear
pi=3.141
D=.10//            Diameter of petrol engine in m
L=.12//            Stroke length in m
l=.25//            length of connecting in m
r=L/2
mR=1.2//          mass of piston in kg
N=1800//           speed in rpm
teeta=25//             angle of inclination of crank in degrees
p=680*10^3//       gas pressure in N/m^2
n=l/r
g=9.81//           acceleration due to gravity
//=======================================
w=2*pi*N/60//                    angular speed in rpm
Fl=pi/4*D^2*p//          force due to gas pressure in N
Fi=mR*w^2*r*(cosd(teeta)+cosd(2*teeta)/(n))//   inertia force due to reciprocating parts in N
Fp=Fl-Fi+mR*g//            net force on piston in N
Fq=n*Fp/((n^2-(sind(teeta))^2)^.5)//      resultant load on gudgeon pin in N
Fn=Fp*sind(teeta)/((n^2-(sind(teeta))^2)^.5)//   thrust on cylinder walls in N
fi=Fl+mR*g//         inertia force of the reciprocating parts before the gudgeon pin load is reversed in N
w1=(fi/mR/r/(cosd(teeta)+cosd(2*teeta)/(n)))^.5
N1=60*w1/(2*pi)
printf('Net force on piston = %.3f N\n Resultant load on gudgeon pin = %.3f N\n Thrust on cylinder walls = %.3f N\n speed at which other things remining same,the gudgeon pin load would be reversed in directionm= %.3f rpm',Fp,Fq,Fn,N1)
