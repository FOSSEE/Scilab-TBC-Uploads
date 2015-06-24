//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 38

disp("CHAPTER 8");
disp("EXAMPLE 38");

//215 V DC machine supplying 5kW at 1000 rpm
//VARIABLE INITIALIZATION
v_t=215;                    //in Volts
r_a=0.4;                    //in Ohms
p=5*1000;                   //in Watts
N_g=1000;                   //speed as generator in rpm
ratio=1.1;                  //according to the solution, Φ_b:Φ_a=1.1

//SOLUTION

//As generator
I_ag=p/v_t;                 // as generator induced current
E_a=v_t+(I_ag*r_a);         // induced emf

//As motor
I_am=p/v_t;                  // current as motor
E_b=v_t-(I_am*r_a);          // back emf
N_m=(1/ratio)*N_g*(E_b/E_a); // speed of machine
N_m=round(N_m);              //to round off the value
disp(sprintf("The speed of the machine as motor is %d rpm",N_m));

//END 



