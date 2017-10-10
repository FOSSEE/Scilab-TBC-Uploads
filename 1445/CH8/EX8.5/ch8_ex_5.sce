//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 5

disp("CHAPTER 8");
disp("EXAMPLE 5");

//VARIABLE INITIALIZATION
v_t=200;                  //in Volts
I_l=50;                   //in Amperes
r_a=0.1;                  //armature resistance in Ohms
r_f=100;                  //field resistance in Ohms
s_loss=500;               //core and iron loss in Watts

//SOLUTION

//solution (a)
I_f=v_t/r_f;             //I_sh is same as I_f and r_sh is same as r_f
I_a=I_f+I_l;
E_a=v_t+(I_a*r_a);
disp(sprintf("(a) The induced emf is %f V",E_a));

//solution (b)
arm_loss=(I_a^2)*r_a;     //armature copper loss
sh_loss=(I_f^2)*r_f;     //shunt field copper loss
tot_loss=arm_loss+sh_loss+s_loss;
p_o=v_t*I_l;              //output power
p_i=p_o+tot_loss;         //input power
bhp=p_i/735.5;            //1 metric horsepower= 735.498W
disp(sprintf("(b) The Break Horse Power(B.H.P.) of the prime mover is %f H.P.(metric)",bhp));

//solution (c)
c_eff=(p_o/p_i)*100;            
p_EE=E_a*I_a;             //electrical power
m_eff=(p_EE/p_i)*100;
e_eff=(p_o/p_EE)*100;
disp(sprintf("(c) The commercial efficiency is %f %%, the mechanical efficiency is %f %% and the electrical efficiency is %f %%",c_eff,m_eff,e_eff));   

//END


