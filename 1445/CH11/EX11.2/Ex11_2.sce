//CHAPTER 11- SINGLE PHASE INDUCTION MOTOR
//Example 2

clc;
disp("CHAPTER 11");
disp("EXAMPLE 2");

//VARIABLE INITIALIZATION
P=4;              //number of poles
f=60;             //frequency in Hz
N_r=1710;         //rotor speed in rpm
r2=12.5;          //rotor resistance at standstill in Ohms

//SOLUTION

N_s=(120*f)/P;    //synchronous speed in rpm

//solution (a)
disp("Solution (a)");
S_f=(N_s-N_r)/N_s; 
disp(sprintf("The per unit slip in the direction of rotation is %f pu",S_f));     
r_f=0.5*(r2/S_f);
disp(sprintf("The effective forward rotor resistance is %f Ω",r_f));

//solution (b)
disp("Solution (b)");
S_b=(N_s+N_r)/N_s; 
disp(sprintf("The per unit slip in the opposite direction is %f pu",S_b));    
r_b=0.5*(r2/S_b);
disp(sprintf("The effective backward rotor resistance is %f Ω",r_b));

//END

 
