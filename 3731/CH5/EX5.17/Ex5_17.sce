//Chapter 5:Dc Motor Drives
//Example 17
clc;

//Variable Initialization

//Ratings of the separately excited motor
V=220    // rated voltage in V
N=1500   // rated speed in rpm
Ia=50    // rated current in A
Ra=0.5   // armature resistance in ohms
Vl=440   // line  voltage inV with 3-phase ac supply
f=50     //frequency of the source voltage in Hz

//Solution
//(i) Tranformer ratio
alpha=0    //firing angle in degrees
Va=V       //motor terminal voltage is equal to the rated voltage when the firing angle is 0 degrees
Vm=%pi/3*Va/cos(alpha)
Vrms=Vm/sqrt(2)        //rms value of the converter input voltage
a=(Vl/sqrt(3))/Vrms    //required transformer ratio

//(ii)Value of the firing angle
E=V-Ia*Ra      //back emf at the rated speed

//(a)When the speed of the motor is 1200 rpm and rated torque
N1=1200        //speed of the motor i rpm
E1=N1/N*E      //back emf at the given speed N1
Va=E1+Ia*Ra    //terminal voltage at the given speed N1
alpha=acos(%pi/3*Va/Vm)  //required firing angle in radians
alpha1=alpha*180/%pi         //required firing angle in degrees

//(b)When the speed of the motor is -800 rpm and twice the rated torque
N1=-800        //speed of the motor in rpm
E1=N1/N*E      //back emf at the given speed N1
Ia=2*Ia        //torque is directly proportional to the current hence twice the rated current
Va=E1+Ia*Ra    //terminal voltage at the given speed N1
alpha=acos(%pi/3*Va/Vm)  //required firing angle in radians
alpha2=alpha*180/%pi         //required firing angle in degrees


//Results
mprintf("(i)Hence the required transformer ratio is :%.3f",a)
mprintf("\n(ii)(a)Hence the required firing angle is :%.2f °",alpha1)
mprintf("\n(b)Hence the required firing angle is :%.2f °",alpha2)
