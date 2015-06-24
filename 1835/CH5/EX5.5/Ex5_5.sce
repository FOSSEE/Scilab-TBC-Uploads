//CHAPTER 5 ILLUSRTATION 5 PAGE NO 163
//TITLE:Inertia Force Analysis in Machines
//Figure 5.3
clc
clear
pi=3.141
N=1800//         speed of the petrol engine in rpm
r=.06//          radius of crank in m
l=.240//         length of connecting rod in m
D=.1//           diameter of the piston in m
mR=1//          mass of piston in kg
p=.8*10^6//       gas pressure in N/m^2
x=.012//          distance moved by piston in m
//===============================================
w=2*pi*N/60//              angular velocity of the engine in rad/s
n=l/r
Fl=pi/4*D^2*p//          load on the piston in N
teeta=32//               by mearument from the figure 5.3
Fi=mR*w^2*r*(cosd(teeta)+cosd(2*teeta)/(n))//   inertia force due to reciprocating parts in N
Fp=Fl-Fi//            net load on the gudgeon pin in N
Fq=n*Fp/((n^2-(sind(teeta))^2)^.5)//      thrust in the connecting rod in N
Fn=Fp*sind(teeta)/((n^2-(sind(teeta))^2)^.5)//   reaction between the piston and cylinder in N
w1=(Fl/mR/r/(cosd(teeta)+cosd(2*teeta)/(n)))^.5
N1=60*w1/(2*pi)//                            
printf('Net load on the gudgeon pin= %.3f N\n Thrust in the connecting rod= %.3f N\n Reaction between the cylinder and piston= %.3f N\n The engine speed at which the above values become zero= %.3f rpm',Fp,Fq,Fn,N1)
