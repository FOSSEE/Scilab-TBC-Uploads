//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 4

disp("CHAPTER 10");
disp("EXAMPLE 4");

//VARIABLE INITIALIZATION
r2=0.2;                        //in Ohms
X2=2;                          //in Ohms

//SOLUTION
s_m=r2/X2;

//solution (a)
s=1;
ratio1=2/((s/s_m)+(s_m/s));    //ratio of T_starting and T_max
ratio2=2*ratio1;               //ratio of T_starting and T_full-load (T_max=2*T_full-load)
disp(sprintf("(a) If the motor is started by direct-on-line starter, the ratio of starting torque to full load torque is %f",ratio2));

//solution (b)
ratio3=(1/3)*ratio2;           //In star-delta starter, T_starting=(1/3)*T_starting_of_DOL
disp(sprintf("(b) If the motor is started by star-delta starter, the ratio of starting torque to full load torque is %f",ratio3));

//solution (c)
ratio4=0.7*2*ratio2;           //due to 70% tapping
disp(sprintf("(c) If the motor is started by auto-transformer, the ratio of starting torque to full load torque is %f",ratio4));

//END  

