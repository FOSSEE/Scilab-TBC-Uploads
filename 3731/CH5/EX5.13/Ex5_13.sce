//Chapter 5:Dc Motor Drives
//Example 13
clc;

//Variable Initialization

//Ratings of the separately excited motor
V=200    // rated voltage in V
N=875    // rated speed in rpm
Ia=150   // rated current in A
Ra=0.06  // armature resistance in ohms
Vs=220   // source voltage in V
f=50     // frequency of the source voltage in Hz

//Solution
E=V-Ia*Ra            //back emf
Vm=sqrt(2)*Vs   //peak voltage

//(i)When the speed is 750 rpm and at rated torque
N1=750         //given speed in rpm
E1=N1/N*E      //back emf at the given speed N1
Va=E1+Ia*Ra    //terminal voltage
cos_alpha=Va*%pi/2/Vm
alpha=acos(cos_alpha)   //required firing angle in radian
alpha1=alpha*180/%pi    //required firing angle in degrees

//(ii)When the speed is -500rpm and at rated torque
N1=-500         //given speed in rpm
E1=N1/N*E       //back emf at the given speed N1
Va=E1+Ia*Ra     //terminal voltage
cos_alpha=Va*%pi/2/Vm
alpha=acos(cos_alpha)   //required firing angle in radian
alpha2=alpha*180/%pi    //required firing angle in degrees

//(iii)When the firing angle is 160 degrees
alpha=160    //firing angle in degrees
alpha=alpha*%pi/180
Va=2*Vm/%pi*cos(alpha)
E1=Va-Ia*Ra    //since Va=E1+Ia*Ra
N1=E1/E*N      //the required speed at the given firing angle

//Results
mprintf("(i)Hence the required firing angle is :%.1f °",alpha1)
mprintf("\n(ii)Hence the required firing angle is :%.1f °",alpha2)
mprintf("\n(iii)Hence the required speed is :%.1f rpm",N1)
