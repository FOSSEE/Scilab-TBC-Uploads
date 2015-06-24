//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 5

disp("CHAPTER 8");
disp("EXAMPLE 5");

//200 V shunt generator
//VARIABLE INITIALIZATION
v_t=200;                  //in Volts
I_l=50;                   //in Amperes
r_a=0.1;                  //armature resistance in Ohms
r_f=100;                  //field resistance in Ohms
s_loss=500;               //core and iron loss in Watts

//SOLUTION

//solution (a)
//Shunt field current, Armature current and induced emf
//I_sh is same as I_f and r_sh is same as r_f
I_f=v_t/r_f;               //Field current 
I_a=I_f+I_l;               //armature current
E_a=v_t+(I_a*r_a);         //Emf of generator
disp(sprintf("(a) The induced emf is %.1f V",E_a));

//solution (b)
arm_loss=(I_a^2)*r_a;     //armature copper loss
sh_loss=(I_f^2)*r_f;     //shunt field copper loss
tot_loss=arm_loss+sh_loss+s_loss;
p_o=v_t*I_l;              //output power
p_i=p_o+tot_loss;         //input power
bhp=p_i/735.5;            //1 metric horsepower= 735.498 W
disp(sprintf("(b) The Break Horse Power(B.H.P.) of the prime mover is %.1f H.P.(metric)",bhp));

//solution (c)
c_eff=(p_o/p_i)*100;       //Commercial efficiency = Output/Input
p_EE=E_a*I_a;             //electrical power developed
m_eff=(p_EE/p_i)*100;     //Mechanical efficiency = electrical power/Input power
e_eff=(p_o/p_EE)*100;     //Electrical efficiency = output power/electrical power
disp(sprintf("(c) The commercial efficiency is %.1f %%",c_eff));   
disp(sprintf("(c) The mechanical efficiency is %.1f %%",m_eff));   
disp(sprintf("(c) The electrical efficiency is %.1f %%",e_eff));   

//END


