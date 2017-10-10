//Chapter 5:Dc Motor Drives
//Example 3
clc;

//Variable Initialization

//Motor ratings
V1=220     //rated voltage in V
Ia1=200    //rated current in A
Ra=0.06    //armature resistance in ohms
Rb=0.04    //internal resistance of the variable source in ohms
N1=800     //speed in rpm
N2=600     //speed when motor is operatingin regenerative braking in rpm

//Solution
Ia2=0.8*Ia1        //motor is opereting in regenerative braking at 80% of Ia1
E1=V1-Ia1*Ra       //back emf at rated operation
E2=(N2/N1)*E1      //back emf at the given speed N2
V2=E2-Ia2*(Ra+Rb)  //internal voltage of thevariable source

//Results
mprintf("\n Internal voltage of the variable source:%.1f V",V2)
