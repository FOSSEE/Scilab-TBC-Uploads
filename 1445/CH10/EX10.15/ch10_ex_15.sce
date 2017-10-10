//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 15

disp("CHAPTER 10");
disp("EXAMPLE 15");

//VARIABLE INITIALIZATION
P=4;                             //number of poles
f_s=50;                          //in Hertz
f_l=20;                          //in Hertz

//SOLUTION

//solution (a)
N1=(120*f_s)/P;                  //speed of rotor field w.r.t. stator structure
N2=(120*f_l)/P;                  //speed of rotor field w.r.t. rotor structure
N_r1=N1-N2;
N_r2=N1+N2;
disp("(a) The prime mover should should drive the rotor at two speeds-"); 
disp(sprintf("At %d rpm in the direction of stator field",N_r1));
disp(sprintf("At %d rpm against the direction of stator field",N_r2));

//solution (b)
s1=(N1-N_r1)/N1;
s2=(N1-N_r2)/N1;
ratio=s1/s2;                     //all other parameters in the expressions of the two voltages are equal
disp(sprintf("(b) The ratio of the two voltages at the two speeds is %d",ratio));

//solution (c)
disp("(c) The poles sequence of -3Φ rotor voltage do not remain the same");

//END
