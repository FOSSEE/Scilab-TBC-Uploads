//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 14

disp("CHAPTER 10");
disp("EXAMPLE 14");

//VARIABLE INITIALIZATION
p=10*1000;                      //in Watts
I_nl=8;                         //no load line current in Amperes
p_ni=660;                       //input power at no load in Watts
I_fl=18;                        //full load current in Amperes
p_fi=11.20*1000;                //input power at full load in Watts
r=1.2;                          //stator resistance per phase in Ohms
loss=420;                       //friction and winding loss in Watts

//SOLUTION

//solution (a)
I1=I_nl/sqrt(3);                //phase current=(line current)/sqrt(3) for delta connection
i_sq_r1=(I1^2)*r*3;             //stator ((I^2)*R) loss at no load; since resistance is given in per phase, 3 needs to be multiplied for 3-phase 
s_loss=(p_ni-loss)-(i_sq_r1);
disp(sprintf("(a) The stator core loss is %.1f W",s_loss));

//solution (b)
I2=I_fl/sqrt(3);
i_sq_r2=(I2^2)*r*3;
p_g=p_fi-s_loss-i_sq_r2;        //air-gap power at full load  
r_loss=p_g-p;
disp(sprintf("(b) The total rotor loss at full load is %.0f W",r_loss));

//solution (c)
o_loss=r_loss-loss;
disp(sprintf("(c) The total rotor ohmic loss at full load is %.0f W",o_loss));

//solution (d)
s_fl=o_loss/p_g;               //full load slip
N_s=1500;
N_r=N_s*(1-s_fl);
disp(sprintf("(d) The full load speed is %.1f rpm",N_r));

//solution (e)
w=(2*%pi*N_s)/60;
T_e=p_g/w;
disp(sprintf("(e) The internal torque is %.2f N-m",T_e));
T_sh=p/(w*(1-s));
disp(sprintf("    The shaft torque is %.2f N-m",T_sh));
eff=p/p_fi;
disp(sprintf("    The motor efficiency is %.2f %%",eff*100));

//The answers may be slightly different due to precision of floating point numbers

//END
