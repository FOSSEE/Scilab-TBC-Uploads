//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 4

clc;
disp("CHAPTER 8");
disp("EXAMPLE 4");

//VARIABLE INITIALIZATION
v_t=240;                   //in Volts
I_l=200;                   //full load current in Amperes
r_f=60;                    //shunt field resisatnce in Ohms
eff=90;                    //percentage full load efficiency
s_loss=800;                //stray(iron + friction) loss in Watts

//SOLUTION

//solution (a)
p_o=v_t*I_l;               //output
eff=eff/100;
p_i=p_o/eff;
tot_loss=p_i-p_o;          //since input=output+loss
I_f=v_t/r_f;
I_a=I_l+I_f;
cu_loss=(I_f^2)*r_f;       //copper loss
c_loss=cu_loss+s_loss;     //constant loss
arm_loss=tot_loss-c_loss;  //armature loss ((I_a^2)*r_a)
r_a=arm_loss/(I_a^2);
disp(sprintf("(a) The armature resisatnce is %f Ω",r_a));

//solution (b)
//for maximum efficiency, armature loss = constant loss =>(I_a^2)*r_a=c_loss
I_a=sqrt(c_loss/r_a);
disp(sprintf("(b) The load current corresponding to maximum efficiency is %f A",I_a));

//END
