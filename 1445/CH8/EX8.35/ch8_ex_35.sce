//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 35

disp("CHAPTER 8");
disp("EXAMPLE 35");

//VARIABLE INITIALIZATION
r_a=0.06;                     //armature resistance in Ohms
r_se=0.04;                    //series resistance in Ohms
r_sh=25;                      //shunt resistance in Ohms
v_t=110;                      //in Volts
I_l=100;                      //in Amperes

//SOLUTION

//solution (a)
I_sh=v_t/r_sh;
I_a=I_l-I_sh;
E_g=v_t-I_a*(r_a+r_se);
disp("(a) When the machine is connected as long shunt compound generator-"); 
disp(sprintf("The armature current is %f A and the total emf is %f V",I_a,E_g));

//solution (b)
I_sh=(v_t/r_sh)-(I_l*r_se/r_sh);
I_a=I_l-I_sh;
E_g=v_t-(I_a*r_a)-(I_l*r_se);
disp("(b) When the machine is connected as short shunt compound generator-"); 
disp(sprintf("The armature current is %f A and the total emf is %f V",I_a,E_g));

//END
