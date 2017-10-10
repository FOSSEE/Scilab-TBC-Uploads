//Chapter 5:Dc Motor Drives
//Example 8
clc;

//Variable Initialization

//Ratings of the separately excited motor
V=220     // rated voltage in V
N=970     // rated speed in rpm
Ia=100    // rated current in A
Ra=0.05   // armature resistance in ohms
N1=1000   // initial speed of the motor in rpm

//Solution
E=V-Ia*Ra
E1=N1/N*E   //value of back emf at the speed N1

//(a)The resistance to be placed
Ia1=2*Ia         //value of the braking current is twice the rated current
Rb=(E1+V)/Ia1-Ra  //required resistance

//(b)The braking torque
Wm=(2*%pi*N1)/60
T=E1*Ia1/Wm

//(c)When the speed has fallen to zero the back emf is zero
E2=0
Ia2=V/(Ra+Rb)
T2=Ia2/Ia1*T   //since the torque is directly proportional to the current


//Results 
mprintf("(a)Hence required resistance is :%.2f ohm",Rb)
//Answer given for the resistance in the book is wrong

mprintf("\n(b)Hence the required braking torque is :%.1f N-m",T)
mprintf("\n(c)Hence the required torque is :%.1f N-m",T2)
