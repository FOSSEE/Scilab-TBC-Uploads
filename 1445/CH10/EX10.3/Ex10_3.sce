//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 3

clc;
disp("CHAPTER 10");
disp("EXAMPLE 3");

//VARIABLE INITIALIZATION
N_r=1140;                        //full load speed in rpm
f=60;                            //frequency in Hz

//SOLUTION

//solution (i)
P=(120*f)/N_r;
P=round(P);                     //since the number of poles cannot be a fraction 
disp(sprintf("(i) The number of poles is %d",P));

//solution (ii)
N_s=(120*f)/P;
s=(N_s-N_r)/N_s;
disp(sprintf("(ii) The slip at full load is %d %%",s*100));

//solution (iii)
f_r=s*f;
disp(sprintf("(iii) The frequency of the rotor voltge is %d Hz",f_r));

//solution (iv)
N1=(120*f_r)/P;                  //speed of rotor field w.r.t stator
N1=round(N1);
disp(sprintf("(iv) The speed of rotor field w.r.t rotor is %d rpm",N1));

//solution (v)
N2=N_r+N1;                       //speed of stator field w.r.t stator field
N3=N_s-N2;                       //speed of rotor field w.r.t stator field
disp(sprintf("(v) The speed of rotor field w.r.t stator field is %d rpm",N3));
disp("Hence, the rotor field is stationary w.r.t stator field");

//solution (vi)
ratio=10/100;                     //since it is specified that slip is 10%
N_r=N_s*(1-ratio);
N_r=round(N_r);
disp(sprintf("(vi) The speed of rotor at 10%% slip is %d rpm",N_r));
s1=(N_s-N_r)/N_s;
fr=s1*f;
disp(sprintf(" The rotor frequency at this speed is %f Hz",fr));

//solution (vii)
v=230;
ratio1=1/0.5;                    //stator to rotor turns ratio 
E_rotor=v*(1/ratio1);
E_rotor_dash=ratio*E_rotor;
disp(sprintf("(vii) The rotor induced emf is %f V",E_rotor_dash));

//END



