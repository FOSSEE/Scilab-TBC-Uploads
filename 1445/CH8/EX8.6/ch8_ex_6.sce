//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 6

disp("CHAPTER 8");
disp("EXAMPLE 6");

//VARIABLE INITIALIZATION
p_o=20*746;        //output power from H.P. to Watts (1 H.P.=745.699 or 746 W) 
v_t=230;           //in Volts
N=1150;            //speed in rpm
P=4;               //number of poles
Z=882;             //number of armature conductors
r_a=0.188;         //armature resistance in Ohms
I_a=73;            //armature current in Amperes
I_f=1.6;           //field current in Amperes

//SOLUTION

//solution (i)
E_b=v_t-(I_a*r_a); 
w=(2*%pi*N)/60;    //in radian/sec
T_e=(E_b*I_a)/w;
disp(sprintf("(i) The electromagnetic torque is %f N-m",T_e));

//solution (ii)
A=P;               //since it is lap winding, so A=P and A=number of parallel paths
phi=(E_b*60*A)/(P*N*Z);
disp(sprintf("(ii) The flux per pole is %f Wb",phi));

//solution (iii)
p_rotor=E_b*I_a;   //power developed on rotor
p_rot=p_rotor-p_o; //p_shaft=p_out
disp(sprintf("(iii) The rotational power is %f W",p_rot)); 

//solution (iv)
tot_loss=p_rot+((I_a^2)*r_a)+(v_t*I_f);
p_i=p_o+tot_loss;
eff=(p_o/p_i)*100;
disp(sprintf("(iv) The efficiency is %f %%",eff));

//solution (v)
T=p_o/w;
disp(sprintf("(v) The shaft torque is %f N-m",T));

//The answers are slightly different due to the precision of floating point numbers

//END





