//Strength Of Material By G.H.Ryder
//Chapter 2
//Example 1
//To Calculate diameter of Bolts

clc();

//Initialization of Variables
P=250; //Power transmitted by coupling, Unit in KW
N=1000;  //Rotations ,Unit in rpm
n=6;  //number fo bolts
PCD=14;  //Pitch circle diameter, Unit in cm
ShearStress=75;  //Allowable mean shear stress, Unit in N/mm^2

//Computations
Torque=(P*60*1000)/(%pi*2*N);  //torque to be transmitted, Unit in N-m
//Torque Equation: Torque=StearStress*(%pi*d^2/4)*n*PCD/(2*100)
d=sqrt(Torque*4*100*2/(ShearStress*%pi*n*PCD));  //Diameter of Rod , Unit in mm
d=ceil(d); //Rounding off d to upper value

//Result
printf("Diameter of the Bolts = %.fmm\n",d)
