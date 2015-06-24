//chapter-4 page 142 example 4.2
//==============================================================================
clc;
clear;

R=0.05;//Resistance in ohm/m
L=0.16173*10^(-6);//Inductance per unit lengths in H/m
C=0.15802*10^(-6);//The Capacitance per unit lengths in F/m
V=197814.14;//The Velocity of propagation in Km/s
l=50;//Length of Coaxial Line in met
Pin=480;//Input Power to the System in watts
f=3*10^9;//Frequency in Hz
c=3*10^5;//Velocity of Light in Km/sec
e0=8.854*10^(-12);//Permittivity in free space in F/m

//CALCULATIONS
Z0=sqrt(L/C);
A=(R/(2*Z0));//Attenuation Constant in NP/m
w=(2*(%pi)*f);//Angular Frequency in rad/sec
B=(w*sqrt(L*C));//Phase Constant in rad/m
Vp=(1/sqrt(L*C))/(10^3);//Phase Velocity in Km/s
er=(((c/V)^2)/e0);//Relative Permittivity
Pl=(2*Pin*l);//Power Loss in watts

//OUTPUT
mprintf('\nAttenuation Constant is A=%1.4f NP/m \nPhase Constant is B=%4.3f rad/m \nPhase Velocity is Vp=%4.3f Km/s \nRelative Permittivity is er=%12.2f \nPower Loss is Pl=%5.0f watts',A,B,Vp,er,Pl);

//=========================END OF PROGRAM===========================================
