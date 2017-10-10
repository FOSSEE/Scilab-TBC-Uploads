//Chapter 5:DC Motor Drives
//Example 1
clc;

//Variable Initialization

//Motor ratings
V1=200     //rated voltage in V
Ia1=10.5   //rated current in A
N1=2000    //speed in rpm
Ra=0.5     //armature resistance in ohms
Rs=400     //field resistance in ohms
V2=175     //drop in source voltage in V

//Solution

flux2=V2/V1
Ia2=1/flux2*Ia1    //since load torque
E1=V1-Ia1*Ra
E2=V2-Ia2*Ra
N2=(E2/E1)*(1/flux2)*N1

//Result
mprintf("\nMotor speed is:%.1f rpm",N2)
//Answer provided in the book is incorrect
