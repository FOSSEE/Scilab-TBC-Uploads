//CHAPTER 11- SINGLE PHASE INDUCTION MOTOR
//Examle 2

disp("CHAPTER 11");
disp("EXAMPLE 2");

//VARIABLE INITIALIZATION
P=4;              //numbre of poles
f=60;             //frequency on Hz
N_r=1710;         //rotor speed in rpm
r=12.5;           //in ohms

//SOLUTION

N_s=(120*f)/P;

//solution (a)
disp("Solution (a)");
S_f=(N_s-N_r)/N_s; 
disp(sprintf("The slip in forward direction is %f %%",S_f*100));     
r_f=0.5*(r/S_f);
disp(sprintf("The forward effective rotor resistance is %f Ω",r_f));

//solution (b)
disp("Solution (b)");
S_b=(N_s+N_r)/N_s; 
disp(sprintf("The slip in backward direction is %f %%",S_b*100));    
r_b=0.5*(r/S_b);
disp(sprintf("The backward effective rotor resistance is %f Ω",r_b));

//END

 
