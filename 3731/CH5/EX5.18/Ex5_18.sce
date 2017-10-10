//Chapter 5:Dc Motor Drives
//Example 18
clc;

//Variable Initialization

//The separately excited motor  is fed from a circulating dual converter
V=220    // rated voltage in V
N=1500   // rated speed in rpm
Ia=50    // rated current in A
Ra=0.5   // armature resistance in ohms
Vl=165   // line  voltage in V
f=50     // frequency of the source voltage in Hz

//Solution
E=V-Ia*Ra            //back emf at the rated speed
Vm=Vl*sqrt(2)   //peak voltage

//(i)During motoring operation when the speed is 1000 rpm and at rated torque
N1=1000        //speed of the motor in rpm
E1=N1/N*E      //back emf at the given speed N1
Va=E1+Ia*Ra    //terminal voltage at the given speed N1
alpha_A=acos(%pi/3*Va/Vm)
alpha_A=alpha_A*180/%pi//required converter firing angle in degrees
alpha_B=180-alpha_A

//(ii)During braking operation when the speed is 1000 rpm and at rated torque
N1=1000        //speed of the motor in the book is given as 100 rpm which is wrong
E1=N1/N*E      //back emf at the given speed N1
Va=E1-Ia*Ra    //terminal voltage at the given speed N1
alpha_A1=acos(%pi/3*Va/Vm)
alpha_A1=alpha_A1*180/%pi//required converter firing angle in degrees
alpha_B1=180-alpha_A1

//(iii)During motoring operation when the speed is -1000 rpm and at rated torque
N1=-1000        //speed of the motor in rpm
E1=N1/N*E      //back emf at the given speed N1
Va=E1-Ia*Ra    //terminal voltage at the given speed N1
alpha_A2=acos(%pi/3*Va/Vm)
alpha_A2=alpha_A2*180/%pi//required converter firing angle in degrees
alpha_B2=180-alpha_A2

//(iv)During braking operation when the speed is -1000 rpm and at rated torque
N1=-1000       //speed of the motor in the book it is given as 100 rpm which is wrong
E1=N1/N*E      //back emf at the given speed N1
Va=E1+Ia*Ra    //terminal voltage at the given speed N1
alpha_A3=acos(%pi/3*Va/Vm)
alpha_A3=alpha_A3*180/%pi//required converter firing angle in degrees
alpha_B3=180-alpha_A3

//Results
mprintf("\n(i)Hence the required firing angle is :%.1f °",alpha_B)
mprintf("\n(ii)Hence the required firing angle is :%.1f °",alpha_B1)
mprintf("\n(iii)Hence for negative speed during motoring operation the required firing angles are :")
mprintf("\nalpha_A :%.1f ° and alpha_B :%.1f °",alpha_A2,alpha_B2)
mprintf("\n(iv)Hence for negative speed during braking operation the required firing angles are :")
mprintf("\nalpha_A :%.1f ° and alpha_B :%.1f °",alpha_A3,alpha_B3)
