//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 10

disp("CHAPTER 10");
disp("EXAMPLE 10");

//VARIABLE INITIALIZATION
P=6;                            //number of poles
f=60;                           //in Hertz
p=48;                           //stator input in Watts
N_r=1140;                       //in rpm
cu_loss=1.4;                    //stator copper loss in Watts 
cr_loss=1.6;                    //stator core loss in Watts
me_loss=1;                      //rotor mechanical loss in Watts

//SOLUTION
N_s=(120*f)/P;
s=(N_s-N_r)/N_s;
p_g=p-(cu_loss+cr_loss);        //rotor input
p_m=p_g*(1-s);                  //output mechanical power
p_sh=p_m-me_loss;               //shaft power
eff=p_sh/p;
disp(sprintf("The motor efficiency is %.2f %%",eff*100));

//END

