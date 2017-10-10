//Chapter 6:Induction Motor Drives
//Example 17
clc;

//Variable Initialization

//Ratings of the star connected Induction motor 
f=50           // frequency in HZ
Vl=440         //line voltage in V
P=6            // number of poles
Ns=120*f/P     //synchronous speed

//Parameters referred to the stator
Xr_=1.2        // rotor winding reactance in ohm
Xs=Xr_         // stator winding reactance in ohm
Rr_=0.4        // resistance of the rotor windings in ohm
Rs=0.5         // resistance of the stator windings in ohm
Xm=50          // magnetizing reatance
a=3.5          // stator to rotor turns ratio
delta=0        // duty ratio  at the given breakdown torque
Sm=1           // slip at standstill

//Solution

//Slip at maximum torque without an external resistance is Sm=Rr_/sqrt(Rs**2+(Xs+Xr_)**2)   
//When an external resistanc Re referred to the stator is connected 
x=Sm*sqrt(Rs**2+(Xs+Xr_)**2)     //x=Re+Rr_
Re=x-Rr_
y=0.5*a**2*(1-delta)    // y=0.5*a**2*R*(1-delta)   //y=Re
R=Re/y

//(Ns-N)/Ns
//(Ns/Ns)-(N/Ns)
Sm=(Ns/Ns)-(1/Ns)
c=(x*Sm-Rr_)/(0.5*a**2*R)  //c=(1-delta)
delta=1-c                  //given duty ratio

//Results
mprintf("Variation of the duty ratio is:%.3f*N*10**(-3)",delta*1000)
mprintf("\nHence the duty ratio must change linearly with speed N")
