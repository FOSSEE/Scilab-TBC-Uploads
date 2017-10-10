//Chapter 5:Dc Motor Drives
//Example 23
clc;

//Variable Initialization

//The motor is operated using dynamic braking method
N=600     //speed in rpm
Vs=220    //source voltage in v
Ra=0.12   // armature resistance in ohms
delta_min=0.1   //manimum value of duty ratio
delta_max=0.9   //maximum value of duty ratio

//Magnetisation curve at N
If=[10, 20,30, 40, 50,  60, 70, 80]    //field current in A
E =[64,118,150,170,184,194,202,210]    //terminal voltage in V

//Solution
//(i) Maximum braking speed is 800rpm with armature current of 70 A
N1=800   //maximum braking speed in rpm 
Ia=70    //armature current in A
E1=N1/N*E(7)   //at 70A motor back emf is 202V 
Rbe=E1/Ia-Ra   //effective value of braking resistance
Rb=Rbe/(1-delta_min)   //required braking resistance

//(ii)When the speed of the motor is 87 rpm
//now torque is maximum when the duty ratio is maximum
N1=87   //speed in rpm
R=Rb*(1-delta_max)+Ra

Ia=If(5)   //value of armature current for the given value of E=184V 
Ke_phi=E(5)/(2*%pi*N)*60
T=Ke_phi*Ia   //required torque


//Results
mprintf("(i)Hence braking resistance is:%.2f ohm",Rb)
mprintf("\n(ii)Hence the required torque is :%.1f N-m",T)
