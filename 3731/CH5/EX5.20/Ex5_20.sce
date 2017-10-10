//Chapter 5:Dc Motor Drives
//Example 20
clc;

//Variable Initialization

//Ratings of the separately excited motor when it is operated in dynamic breaking
V=230    // rated voltage in V
N=960    // rated speed in rpm
Ia=200   // rated current in A
Ra=0.02  // armature resistance in ohms
Vs=230   // source voltage in V
Rb=2     // braking resistance in ohm

//Solution
//When the motor speed is 600 rpm and the braking torque is twice the rated value
Ia1=2*Ia     //torque is directly proportional to current
N1=600       //speed of the motor in rpm
E=V-Ia*Ra    //back emf
E1=N1/N*E
x=E1/Ia1-Ra  //x=(1-delta)*Rb
y=x/Rb       //y=1-delta
delta=1-y    //duty ratio

//(ii)If the duty ratio is 0.6 and and the braking torque is twice the rated value
delta1=0.6  //duty ratio
Ia1=2*Ia   //torque is directly proportional to current
E1=Ia1*((1-delta1)*Rb+Ra)   //back emf
N1=E1/E*N


//Results 
mprintf("(i)Duty ratio is :%.2f",delta)
mprintf("\n(ii)Hence the motor speed is :%.1f rpm",N1)
