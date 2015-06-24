//CHAPTER 12 ILLUSRTATION 3 PAGE NO 313
//TITLE:Balancing of reciprocating of masses
clc
clear
pi=3.141
g=10//    acceleration due to gravity approximately in m/s^2
a=.70//distance between cylinder centres in m
r=60// crank radius in cm
m=130//mass of rotating parts per cylinder in kg
mR=210// mass of reciprocating parts per cylinder in kg
c=.67// portion of reciprocating mass to be balanced
N=300//e2engine speed in rpm
b=.64//       radius of balance masses in m
//============================
Ma=m+c*mR//            total mass to be balanced in kg
mA=100.44//         mass of wheel A from figure in kg
Br=c*mR/Ma*mA//       balancing mass for reciprocating parts in kg
H=Br*(2*pi*N/60)^2*b//   hammer blow in N
w=(2*pi*N/60)//    angular speed
T=2^.5*(1-c)*mR*w^2*r/2/100//tractive effort in N
S=a*(1-c)*mR*w^2*r/2/2^.5/100//   swaying couple in Nm

printf('Hammer blow=%.3f in N\n tractive effort= %.3f in N\n swaying couple= %.3f in Nm',H,T,S)
