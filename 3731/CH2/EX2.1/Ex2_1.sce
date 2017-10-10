//Chapter 2:Dynamics of Electric Drives
//Example 1
clc;

//Variable Initialization
Jo=0.2     // inertia of the motor in kg-m2
a1=0.1     // reduction gear
J1=10      // inertia of the load in kg-m2
Tl1=10     // load torque
v=1.5      // speed of the translational load 
M1=1000    // mass of the translational load
N=1420     // speed of the motor
n1=.9      // efficiency of the reduction gear
n1_=0.85   // efficiency of the translational load and the motor
F1=M1*9.81 // force of the translational load 

//Solution
Wm=N*%pi/30 //angular speed
J=Jo+a1**2*J1+ M1*(v/Wm)**2 // total equivalent moment of inertia
Tl= a1*Tl1/n1+F1/n1_*(v/Wm) // total equivalent torque

//Result
mprintf("\nEquivalent moment of inertia is : %.1f kg-m2",J)
mprintf("\nEquivalent load torque : %.2f N-m",Tl)
