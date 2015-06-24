//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 14

disp("CHAPTER 8");
disp("EXAMPLE 14");

//shunt generator 
//VARIABLE INITIALIZATION
v_t=220;                    //in Volts
I_l=196;                    //in Amperes
s_loss=720;                 //stray loss in Watts
r_f=55;                     //shunt field ressitance in Ohms
eff=88/100;                 //efficiency

//SOLUTION
p_o=v_t*I_l;                //output power
p_i=p_o/eff;                //electrical input
tot_loss=p_i-p_o;
I_f=v_t/r_f;                //field current
I_a=I_l+I_f;                //armature current
cu_loss=v_t*I_f;            //shunt field copper loss
c_loss=cu_loss+s_loss;      //constant loss
arm_loss=tot_loss-c_loss;   //armature copper loss
r_a=arm_loss/(I_a^2);       //armature resistance
disp(sprintf("The armature resistance is %f Ω",r_a));

//for maximum efficiency, armature loss = constant loss =>(I_a^2)*r_a=c_loss
I_a=sqrt(c_loss/r_a);
disp(sprintf("The load current corresponding to maximum efficiency is %.1f A",I_a));

//END



