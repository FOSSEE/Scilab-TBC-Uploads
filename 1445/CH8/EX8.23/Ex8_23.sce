//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 23

clc;
disp("CHAPTER 8");
disp("EXAMPLE 23");

//VARIABLE INITIALIZATION
v=230;                         //in Volts
r_a=0.4;                       //in Ohms
r_f1=115;                      //in Ohms
I_a=20;                        //in Amperes
N1=800;                        //in rpm
N2=1000;                       //in rpm

//SOLUTION
I_f1=v/r_f1;
E_b1=v-(I_a*r_a); 
//rearranging the equation, we get,
r_f2=((E_b1*N2)/((v*N1)-(N1*I_a*r_a)))*r_f1;  
r_f2_dash=r_f2-r_f1;
disp(sprintf("The external resistance is %f Ω",r_f2_dash));

//The answer is slightly different due to the precision of floating point numbers

//END