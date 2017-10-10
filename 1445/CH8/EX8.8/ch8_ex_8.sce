//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 8

disp("CHAPTER 8");
disp("EXAMPLE 8");

//VARIABLE INITIALIZATION
v_t=250;                     //in Volts
r_a=0.1;                     //armature resistance in Ohms
r_f=125;                     //field resistance in Ohms
p_o=20*1000;                 //output power in Watts
N_g=1000;                    //speed as generator in rpm

//SOLUTION

//machine as a generator
I_l=p_o/v_t;
I_f=v_t/r_f;                 //I_f is same as I_sh 
I_ag=I_l+I_f;
E_a=v_t+(I_ag*r_a);          //induced emf = E_a = E_g

//machine as a motor
I_l=p_o/v_t;
I_f=v_t/r_f;
I_am=I_l-I_f;
E_b=v_t-(I_am*r_a);         //back emf = E_b = E_m

//solution (a)
N_m=(N_g*E_b)/E_a;
N_m=round(N_m);             //to round off the value of N_m
disp(sprintf("(a) The speed of the same machine as a motor is %d rpm",N_m));

//solution (b)

//(i)
p1=(E_a*I_ag)/1000;          //to express the answer in kW
disp(sprintf("(b) (i) The internal power developed as generator is %f kW",p1));

//(ii)
p2=(E_b*I_am)/1000;        
disp(sprintf("(b) (ii) The internal power developed as motor is %f kW",p2));

//END

