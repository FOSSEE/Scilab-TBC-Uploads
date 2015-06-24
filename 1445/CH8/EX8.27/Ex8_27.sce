//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 27

disp("CHAPTER 8");
disp("EXAMPLE 27");

//DC series motor, 200V DC motor
//VARIABLE INITIALIZATION
v_t=200;                    //in volts
r_a=0.06;                   //in Ohms
r_se=0.04;                  //in Ohms
p_i=20*1000;                //in Watts

//SOLUTION

//solution (a)
//Il=Ia=Ise= Pinput/Vt
I_a=p_i/v_t;                // armature current
E_b=v_t-I_a*(r_a+r_se);     // back emf
disp(sprintf("(a) The counter emf of the motor is %d V",E_b));

//solution (b)
p_a=E_b*I_a;                // power developed in armature
p_a=p_a/1000;                //from W to kW
disp(sprintf("(b) The power developed in the armature is %d kW",p_a));

//END

