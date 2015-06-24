//Chemical Engineering Thermodynamics
//Chapter 1
//Introduction

//Example 1.5
clear;
clc;

//Given
n = 1;//n is the Kg mole of an ideal gas
P = 700*(10^4);//P is the pressure of the system in N/(m^2)
W = 45;//W is the weight of the mass in Kg
M = 20;//M is the weight of the piston and piston rod together in Kg
T = 300;//T is the constant temperature of the bath in K
h = .4;//h is the height difference of the piston after expansion in m

//To calculate the work obtained
a = (10^-4);//a is the cross sectional area of the cylinder in m^2
V = h*a;//V is the volume changed as gas expands in m^3

//(i). If gas alone is the system
//1Kgf = 9.8065Nm
P1 = ((W+M)*9.8065)/(10^-4);//P1 is the resisting pressure when the gas confined in the cylinder taken as a system
W1 = P1*V;//W1 is the work done if the gas confined in the cylinder us taken as system
mprintf('Work done by the system if the gas confined in the cylinder is taken as a system is %f Nm',W1);

//(ii). If gas + piston + piston rod is a system
P2 = ((W*9.8065)/(10^-4));//P2 is the resisting pressure when the gas plus piston plus piston rod is taken as a system
W2 = P2*V;//W2 is the Work done by the system if the gas plus piston plus piston rod is taken as a system
mprintf('\n Work done by the system if the gas plus piston plus piston rod is taken as system is %f Nm',W2);

//(iii). If gas + piston + piston rod +weight is system
P3 = 0;//P3 is the resisting pressure when the gas plus piston plus piston rod plus weight is taken as a system
W3 = P3*V;//W3 is the work done by the system if the gas plus piston plus piston rod plus weight is taken as a system
mprintf('\n Work done by the system if the gas plus piston plus piston rod plus weight is taken as a system is %f',W3);
//end