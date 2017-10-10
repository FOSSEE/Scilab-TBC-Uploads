//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 13

disp("CHAPTER 8");
disp("EXAMPLE 13");

//VARIABLE INITIALIZATION
P=4;                        //number of poles
v_t=220;                    //in Volts
I_l=42;                     //load current in Amperes
r_a=0.1;                    //in Ohms
r_f=110;                    //in Ohms
drop=1;                     //contact drop per brush
//SOLUTION

//solution (i)
A=P;                        //for lap winding
I_f=v_t/r_f;                //I_f is same as I_sh
I_a=I_l+I_f;
I_c=I_a/A;                  //conductor current
disp(sprintf("The current in each conductor of the armature is %d A",I_c));

//solution (ii)
v_a=I_a*r_a;                //armature voltage drop
v_b=2*drop;                 //brush drop
emf=v_t+v_a+v_b;
disp(sprintf("The total emf generated is %f V",emf));

//END

