//Chapter 2:Dynamics of Electric Drives
//Example 3
clc;

//Variable Initialization
Tlh=1000     // load torque in N-m
Tmax=700     // maximum motor torque
Tll=200      // light load for the motor to regain its steady state
Tmin=Tll     // minimum torque
t_h=10       // period for which a load torque of 1000 N-m is apllied in sec
Jm=10        // moment of inertia of the motor in Kg-m2
No=500       // no load speed in rpm
Tr=500       // torque at a given no load speed in N-m

//Solution
Wmo=No*2*%pi/60 // angular no load speed in rad/sec
s=0.05              // slip at a torque of 500 N-m
Wmr=(1-s)*Wmo       // angular speed at a torque of 500 N-m in rad/sec

y=log((Tlh-Tmin)/(Tlh-Tmax))
x=Tr/(Wmo-Wmr)

J=x*t_h/y
Jf=J-Jm

//Result 
//Answer Provided in the textbook is wrong
mprintf("\n\nMoment of inertia of the flywheel : %.1f Kg-m2",Jf)
