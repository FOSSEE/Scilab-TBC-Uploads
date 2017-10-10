//Chapter 10:Traction Drives
//Example 1
clc;

//Variable Initialization
Ma=480    //mass of each motor armature in kg  0.48tonne=480kg
Da=0.5    //average diameter of each motor in m
m=450     //mass of each wheel in kg
R=0.54    //radius of each wheel tread in m
M=40      //combine wight of one motor and one trailer coach in ton
alpha=5   //accelaration in metres per second
N=4       //number of DC motors 
a=0.4     //gear ratio
r=20      //train resistance in ohms

//Solution
Jw=1/2*m*R**2   //inertia of the each wheel in kg metre square
nw=2*(N*2)      //total number of wheels
J1=nw*Jw        //total inertia of all the wheels in kg metre square

Jm=N*(1/2*Ma*(Da/2)**2)  //approximate inertia of all the motors in kg metre square
J2=Jm/a**2               //approximate innertia of the motor referred to the wheels in kg metre square

Fa2=(J1+J2)*alpha*1000/3600/R    //Tractive efforts for driving rorating parts
Fa1=277.8*M*alpha                //tractive efforts to accelerate the train mass horizontally
Fr=r*M                           //Tractive efforts required to overcome train resistance
Ft=Fa1+Fa2+Fr                    //Tractive efforts required to move the train
Tm=a*R*Ft/N                      //torque per motor

//Result
mprintf("\nTorque per motor: %.1f N-m",Tm)
