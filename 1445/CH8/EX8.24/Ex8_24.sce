//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 24

clc;
disp("CHAPTER 8");
disp("EXAMPLE 24");

//This example is same as example 19

//VARIABLE INITIALIZATION
v=250;                            //in Volts
r_a=0.5;                          //in Ohms
r_f=250;                          //in Ohms
N1=600;                           //in rpm
I_l=21;                           //in Amperes
r=250;                            //in Ohms

//SOLUTION
I_f1=v/r_f;
I_a1=I_l-I_f1;
I_a2=2*I_a1;
E_b1=v-(I_a1*r_a);
E_b2=v-(I_a2*r_a);
ratio=(r+r_f)/r_f;
N2=(ratio*N1*E_b2)/E_b1;
N2=round(N2);
disp(sprintf("The new speed is %d rpm",N2));

//END
