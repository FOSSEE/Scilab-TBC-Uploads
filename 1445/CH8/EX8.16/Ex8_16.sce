//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 16

disp("CHAPTER 8");
disp("EXAMPLE 16");

//4 pole 250 V shunt motor
//VARIABLE INITIALIZATION
v_t=250;                   //in Volts
P=4;                       //number of poles
Z=500;                     //number of conductors
r_a=0.25;                  //in Ohms
r_f=125;                   //in Ohms
phi=0.02;                  //in Wb
I_l=14;                    //in Amperes
A=2;
rot_loss=300;              //rotational loss in Watts

//SOLUTION

//solution (i)
I_f=v_t/r_f;                // field current
I_a=I_l-I_f;                //armature current
E_a=v_t-(I_a*r_a);          // induced emf
N=(E_a*A*60)/(phi*Z*P);     //RPM
N=round(N);                 //to round off the value of N
disp(sprintf("(i) The speed is %d rpm",N));
p_e=E_a*I_a;                //electromagnetic power
w=(2*%pi*N)/60;             //speed in RPS
T1=p_e/w;                   // Internal torque
disp(sprintf("The internal torque developed is %.3f N-m",T1));

//solution (ii)
//shaft power
p_o=p_e-rot_loss;           //power output
disp(sprintf("(ii)The shaft power is %.0f W",p_o));
T2=p_o/w;                   //shaft torque
disp(sprintf("The shaft torque is %.2f N-m",T2));
p_i=v_t*I_l;                // power input
eff=(p_o/p_i)*100;          //efficiency
disp(sprintf("The efficiency is %.2f %%",eff));

//END 
 



