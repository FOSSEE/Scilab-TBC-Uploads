//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 29

clc;
disp("CHAPTER 8");
disp("EXAMPLE 29");

//VARIABLE INITIALIZATION
r_a=1;                      //in Ohms
N1=800;                     //in rpm
v_t=200;                    //in Volts
I_a=15;                     //in Amperes
r_s=5;                      //series resistance in Ohms

//SOLUTION
E_b1=v_t-(I_a*r_a);
E_b2=v_t-I_a*(r_a+r_s);
N2=(E_b2/E_b1)*N1;
N2=round(N2);               //to round off the value
disp(sprintf("The speed attained after connecting the series resistance is %d rpm",N2));

//END 
