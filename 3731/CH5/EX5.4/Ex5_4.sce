//Chapter 5:DC Motor Drives
//Example 4
clc;

//Variable Initialization

//The ratings of the motor are same as that of Ex-5.2
V1=220      //rated voltage in V
Ia1=100     //rated current in A
N1=1000     //speed in rpm clockwise
N2=800      //given speed during the dynamic braking in rpm
Ra=0.05     //armature resistance in ohms
Rs=0.05     //field resistance in ohms

//Solution

T2 = 2   //dynamic torque is twice the rated torque
Ia2=Ia1*sqrt(T2)   //since T=Kf*Ia**2
E1=V1-Ia1*(Ra+Rs)
E2=(Ia2/Ia1)*(N2/N1)*E1    //since E=Ke*Ia*N
Rb=E2/Ia2-(Ra+Rs)          //since E2=Ia2(Rb+Ra+Rs)  during braking

//Results
mprintf("\n Braking current Ia2: %.1f A",Ia2)
mprintf("\n Required braking resistance Rb: %.2f ohm",Rb)
