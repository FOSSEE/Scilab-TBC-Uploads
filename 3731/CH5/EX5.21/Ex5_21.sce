//Chapter 5:Dc Motor Drives
//Example 21
clc;

//Variable Initialization

//Ratings of the series motor
N=600     //speed in rpm
Vs=220    //source voltage in V
Ra_Rf=0.12    //combine armature resistance field resistance

//Magnetisation curve at N
If=[10, 20,30, 40, 50,  60, 70, 80]    //field current in A
E =[64,118,150,170,184,194,202,210]    //terminal voltage in V

//Solution
//(i)When the duty ratio is 0.6 and motor current is 60 A
delta=0.6    //duty ratio
Ia1=60       //motor current in A
Va1=delta*Vs //terminal voltage for the given duty ratio
E1=Va1-Ia1*Ra_Rf      //back emf for the given duty ratio

//For Ia1=60 A the terminal voltage is 194 V as given in the magnetization curve
N1=E1/E(6)*N          //motor speed for the given duty ratio

//(ii)When the speed is 400rpm and the duty ratio is 0.65
delta=0.65    //duty ratio
N2=400        //speed in rpm
Va1=delta*Vs //terminal voltage for the given duty ratio

//From the magnetization characteristic for the speed of 400rpm the current Ia=70 A
E1=Va1-If(7)*Ra_Rf      //back emf for the given duty ratio
T=(E1*If(7))/N2/(2*%pi/60)    //required torque


//Results
mprintf("(i)Hence the motor speed is :%.1f rpm",N1)
mprintf("\n(ii)Hence the required torque is :%.1f N-m",T)
