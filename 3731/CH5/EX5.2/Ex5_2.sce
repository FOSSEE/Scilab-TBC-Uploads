//Chapter 5:DC Motor Drives
//Example 2
clc;

//Variable Initialization

V1=220      //rated voltage in V
Ia1=100     //rated current in A
N1=1000     //rated speed in rpm clockwise
Ra=0.05     //armature resistance in ohms
Rs=0.05     //field resistance in ohms

//Solution
//Turns is reduced to 80% then flux is also reduced by the same value and hence current is also reduced
T1=Ia1**2      //flux is directly proportional to current Ia
T2=0.8*1**2  //flux is directly proportional to current Ia
Ia2=-Ia1/sqrt(0.8)   //since T1=T2 and the direction is opposite

E1=V1-Ia1*(Ra+Rs)

Rs=.8*Rs       //Rs=80% of the field resistance 0.05ohm since the flux is reduced to 80%
E2=-(V1+Ia2*(Ra+Rs))   

N2=(E2/E1)*(Ia1/Ia2)*(N1/0.8)   //since E=Kn*flux*N

//Result
mprintf("\nMotor speed is:N2=%.1f rpm",N2)
