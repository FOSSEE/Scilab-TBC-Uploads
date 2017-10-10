//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 7

disp("CHAPTER 10");
disp("EXAMPLE 7");

//VARIABLE INITIALIZATION
P=4;                           //number of poles
f=50;                          //in Hz
r2=0.1;                        //rotor resistance in Ohms
X2=2;                          //standstill reactance in Ohms
E1=100;                        //induced emf between slip ring in Volts
N_r=1460;                      //full load speed in rpm

//SOLUTION

//solution (i)
N_s=(120*f)/P;
s_fl=(N_s-N_r)/N_s;
disp(sprintf("(i) The slip at full load is %f %%",s_fl*100));
s_m=r2/X2;
disp(sprintf("The slip at which maximum torque occurs is %f %%",s_m*100));

//solution (ii)
E2=E1/sqrt(3);
disp(sprintf("(ii) The emf induced in rotor per phase is %f V",E2));

//solution (iii)
X2_dash=s_fl*X2;
disp(sprintf("(iii) The rotor reactance per phase is %f Ω",X2_dash));

//solution (iv)
z=sqrt((r2^2)+(X2_dash)^2);
I2=(s_fl*E2)/z;
disp(sprintf("(iv) The rotor current is %f A",I2));

//solution (v)
pow_fact_r=r2/z;
disp(sprintf("(v) The rotor power factor is %f (lagging)",pow_fact_r));

//END

 

