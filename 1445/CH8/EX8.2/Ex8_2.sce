//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 2

disp("CHAPTER 8");
disp("EXAMPLE 2");

// 230 V DC shunt machine 
//VARIABLE INITIALZATION
v_t=230;            //terminal voltage in Volts
r_a=0.5;            //armature resistance in Ohms
r_f=115;            //shunt field resistance in Ohms
I_l=40;             //line current in Amperes

//SOLUTION

//for generator
I_f=v_t/r_f;        //current through the shunt field winding
I_a=I_l+I_f;        //Armature Current
E_a=v_t+(I_a*r_a);  //E_a=emf of generator

//for motor
I_f=v_t/r_f;
I_a=I_l-I_f;
E_b=v_t-(I_a*r_a);  //E_b=emf of motor
//ratio of speed as generator to speed as motor
ratio=E_a/E_b;      //E_a:E_b=(k_a*flux*N_g):(k_a*flux*N_m) =>E_a:E_b=N_g:N_m (as flux is constant)
disp(sprintf("The ratio of speed as a generator to the speed as a motor is %.3f",ratio));

//END

