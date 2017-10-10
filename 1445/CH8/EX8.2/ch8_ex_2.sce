//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 2

disp("CHAPTER 8");
disp("EXAMPLE 2");

//VARIABLE INITIALZATION
v_t=230;            //terminal voltage in Volts
r_a=0.5;            //armature resistance in Ohms
r_f=115;            //shunt field resistance in Ohms
I_l=40;             //line current in Amperes

//SOLUTION

//for generator
I_f=v_t/r_f;
I_a=I_l+I_f;
E_a=v_t+(I_a*r_a);  //here E_a=emf of generator

//for motor
I_f=v_t/r_f;
I_a=I_l-I_f;
E_b=v_t-(I_a*r_a);  //here E_b=emf of motor

ratio=E_a/E_b;      //E_a:E_b=(k_a*flux*N_g):(k_a*flux*N_m) =>E_a:E_b=N_g:N_m (as flux is constant)
disp(sprintf("The ratio of speed as a generator to the speed as a motor i.e. N_g:N_m is %f",ratio));

//END

