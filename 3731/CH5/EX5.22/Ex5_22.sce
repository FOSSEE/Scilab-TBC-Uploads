//Chapter 5:Dc Motor Drives
//Example 22
clc;

//Variable Initialization

//The motor is operated using regenarative braking method
N=600     //speed in rpm
Vs=220    //source voltage in V
Ra_Rf=0.12    //combine armature resistance field resistance

//Magnetisation curve at N
If=[10, 20,30, 40, 50,  60, 70, 80]    //field current in A
E =[64,118,150,170,184,194,202,210]    //terminal voltage in V

//Solution
//(i)When  the duty ratio is 0.5 and the braking torque is equal to the motor torque
delta=0.5       //duty ratio
Va1=delta*Vs    //terminal voltage
Ia1=If(7)       //current at rated motor torque
E1=Va1+Ia1*Ra_Rf      //back emf for the given duty ratio
N1=E1/E(7)*N          //for a current of 70 A E=202 V from the magnetization curve

//(ii)When maximum permisssible duty ratio is 0.95 and current is 70A
delta_max=0.95      //maximum duty ratio
Va1=delta_max*Vs    //terminal voltage
Ia1=70              //maximum permissible current in A
E2=Va1+Ia1*Ra_Rf    //back emf for the given duty ratio
N2=E2/E(7)*N        //for a current of 70 A E=202 V

//(iii)When the motor speed is 1000rpm and maximum current is 70A with duty ratio in the range of 0.05 to 0.95
Ia1=70              //maximum permissible current in A
N3=1000             //given speed in rpm
delta_max=0.95      //maximum duty ratio
E3=N3/N*E(7)        //terminal voltage
x=(E3-delta_max*Vs)/Ia1    //x=R+Ra_Rf   where R is the required external resistance
R=x-Ra_Rf    //external resistance

//(iv)when the motor is running at 1000rpm with current at 70 
Ia1=70              //maximum permissible current in A
N4=1000             //given speed in rpm
Ra=Ra_Rf            //total value of armature resistance is assumed to be the same
E4=Va1+Ia1*Ra       //back emf for the given speed N4
E_=N/N4*E4
ratio=E_/E(7)       //fraction of the requuired number of turns to be reduced

//Results
mprintf("(i)Hence the motor speed is :%.1f rpm",N1)
mprintf("\n(ii)Hence the motor speed is :%.1f rpm",N2)
mprintf("\n(iii)Hence the required external resistance is :%.1f ohm",R)
mprintf("\n(iv)Hence fraction of the  number of turns to be reduced is :%.3f",ratio)
