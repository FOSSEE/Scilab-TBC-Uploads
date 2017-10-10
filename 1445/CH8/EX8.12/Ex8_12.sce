//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 12

clc;
disp("CHAPTER 8");
disp("EXAMPLE 12");

//VARIABLE INITIALIZATION
P=4;                         //number of poles
N=750;                       //in rpm
r_a=0.4;                     //in Ohms
r_f=200;                     //in Ohms
Z=720;
phi=2.895*(10^6)*(10^(-8));  //in Wb (1 line=10^(-8) Wb)
r_l=10;                      //load resistance in Ohms
A=2;                         //for wave winding

//SOLUTION
E_a=(phi*Z*N*P)/(60*A); 
disp(sprintf("The induced emf is %f V",E_a));
// E_a=v+(I_a*r_a) but I_a=I_l+I_f and I_l=v/r_l, I_f=v/r_f =>I_a=(v/r_l) + (v/r_f)
// =>E_a=v+(((v/r_l) + (v/r_f))*r_a)
// taking v common, the following equation is obtained
v=E_a/(1+(r_a/r_f)+(r_a/r_l)); 
disp(sprintf("The terminal voltage of the machine is %f V",v));

//The answer is slightly different due to the precision of floating point numbers

//END
