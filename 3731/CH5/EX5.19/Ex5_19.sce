//Chapter 5:Dc Motor Drives
//Example 19
clc;

//Variable Initialization

//Ratings of the separately excited motor
V=230    // rated voltage in V
N=960    // rated speed in rpm
Ia=200   // rated current in A
Ra=0.02  // armature resistance in ohms
Vs=230   // source voltage in V

//Solution
E=V-Ia*Ra    //back emf

//(i) When the speed of motor is 350 rpm with the rated torque during motoring operation
N1=350      //given speed in rpm
E1=N1/N*E   //given back emf at N1
Va=E1+Ia*Ra  //motor terminal voltage
delta=Va/V  //duty ratio

//(ii) When the speed of motor is 350 rpm with the rated torque during braking operation
Va=E1-Ia*Ra  //motor terminal voltage
delta1=Va/V   //duty ratio

//(iii)Maximum duty ratio is 0.95
delta2=0.95   //maximum duty ratio
Va=delta2*V   //terminal voltage
Ia1=2*Ia      //maximum permissable current
E1=Va+Ia1*Ra  //back emf
N1=E1/E*N     //maximum permissible speed
Pa=Va*Ia1     //power fed to the source

//(iv) If the speed of the motor is 1200 rpm and the field of the motor is also controlled
N2=1200      //given speed in rpm
//Now the field current is directly proportional to the speed of the motor
If=N/N2     //field current as a ratio of the rated current


//Results
mprintf("(i) Duty ratio is :%.3f",delta)
mprintf("\n(ii)Duty ratio is :%.2f",delta1)
mprintf("\n(iii)Maximum permissible speed is :%d rpm",N1)
mprintf("\nPower fed to the source is :%.1f kW",Pa/1000)
mprintf("\n(iv)Field current as a ratio of the rated current is :%.1f",If)
