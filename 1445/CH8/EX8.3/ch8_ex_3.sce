//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 3

disp("CHAPTER 8");
disp("EXAMPLE 3");

//VARIABLE INITIALIZATION
p_o=10*1000;                //output of generator in Watts
v_t=250;                    //terminal voltage in Volts
N=1000;                     //speed in rpm
r_a=0.15;                   //armature resistance in Ohms
I_f=1.64;                   //field current in Amperes
rot_loss=540;               //rotational loss in Watts

//SOLUTION

//solution (i)
I_l=p_o/v_t;
I_a=I_l+I_f;
E_a=v_t+(I_a*r_a);
disp(sprintf("(i) The armature induced emf is %f V",E_a));

//solution (ii)
w=(2*%pi*N)/60;              //in radian/sec
T_e=(E_a*I_a)/w;
disp(sprintf("(ii) The torque developed is %f N-m",T_e));

//solution (iii)
arm_loss=(I_a^2)*r_a;        //armature loss
fld_loss=v_t*I_f;            //field loss
tot_loss=rot_loss+arm_loss+fld_loss;
p_i=p_o+tot_loss;
eff=(p_o/p_i)*100;
disp(sprintf("(iii) The efficiency is %f %%",eff));

//END


