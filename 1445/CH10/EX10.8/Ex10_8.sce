//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 8

disp("CHAPTER 10");
disp("EXAMPLE 8");

//VARIABLE INITIALIZATION
N_s=1200;                     //synchronous speed in rpm
p_in=80;                      //input power in kW
loss=5;                       //copper and iron losses in kW
f_loss=2;                     //friction and windage loss in kW
N=1152;                       //rotor speed in rpm

//SOLUTION

//solution (a)
p_rotor=p_in-loss;
disp(sprintf("(a) The active power transmitted to rotor is %d kW",p_rotor));

//solution (b)
s=(N_s-N)/N_s;
cu_loss=s*p_rotor;
disp(sprintf("(b) The rotor copper loss is %d kW",cu_loss));

//solution (c)
p_m=(1-s)*p_rotor;            //since P2:Pcu:Pm=1:s:(1-s)
disp(sprintf("(c) The mechanical power developed is %d kW",p_m));

//solution (d)
p_shaft=p_m-f_loss;           //output power
disp(sprintf("(d) The mechanical power developed to load is %d kW",p_shaft));

//solution (e)
eff=p_shaft/p_in;
disp(sprintf("(e) The efficiency of the motor is %.2f %%",eff*100));

//END
