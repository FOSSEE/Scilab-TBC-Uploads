//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 25

clc;
disp("CHAPTER 8");
disp("EXAMPLE 25");


//VARIABLE INITIALIZATION
slot=24;                      //number of slots
P=2;                          //number of poles
N=18;                         //number of turns per coil
B=1;                          //in Webers
l=20/100;                     //effective length in meters
rad=10/100;                   //radius in meters                  
w=183.2;                      //angular velocity in rad/s

//SOLUTION
A=2;
Z=slot*P*N;                   //total number of conductors
ar1=(2*%pi*rad*l)/P; 
ar2=ar1*0.8;                  //since the magnetic poles 80% of the armature periphery
phi=B*ar2;                    //effective flux per pole

//solution (a)
E_a=(P*Z*phi*w)/(2*%pi*A);
disp(sprintf("(a) The induced emf is %f V",E_a));

//solution (b)
coil=slot/P;                   //number of coils in each path
E_coil=E_a/coil;
disp(sprintf("(b) The induced emf per coil is %f V",E_coil));

//solution (c)
E_turn=E_coil/N;
disp(sprintf("(c) The induced emf per turn is %f V",E_turn));

//solution (d)
E_cond=E_turn/A;
disp(sprintf("(d) The induced emf per conductor is %f V",E_cond));

//The answers are slightly different due to the precision of floating point numbers

//END

