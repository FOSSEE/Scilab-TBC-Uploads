//Chapter 6:Induction Motor Drives
//Example 13
clc;

//Variable Initialization

//Ratings of the star connected Induction motor are same as that of Ex-6.9
f=50           // frequency in HZ
Vl=400         //line voltage in V
P=4            // number of poles
N=1370         //rated speed

//Parameters referred to the stator
Xr_=3.5        // rotor winding reactance in ohm
Xs=Xr_         // stator winding reactance in ohm
Rr_=3          // resistance of the rotor windings in ohm
Rs=2           // resistance of the stator windings in ohm

//Solution
Wms=4*%pi*f/P
f1=60          //frequency in Hz during speed control of the motor
K=f1/f         //the value of K at 60Hz 
x=Rs+sqrt(Rs**2+K**2*(Xs+Xr_)**2)
Tmax_=3/(2*K*Wms)*(Vl/sqrt(3))**2/x       //torque at 60 Hz frequency
z=Rs+sqrt(Rs**2+(Xs+Xr_)**2)
Tmax=3/(2*Wms)*(Vl/sqrt(3))**2/z          //maximum torque
ratio=Tmax_/Tmax  //ratio

//Result
mprintf("Ratio of Motor breakdown torque at 60Hz to rated torque at 50Hz is:%.3f",ratio)
