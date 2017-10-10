//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 6

disp("CHAPTER 10");
disp("EXAMPLE 6");

//VARIABLE INITIALIZATION
P=4;                         //number of poles
f_r=2;                       //rotor frequency in Hertz
f_s=50;                      //stator frequency in Hertz
v=400;                       //in Volts
ratio=1/0.5;                 //stator to rotor turn ratio

//SOLUTION
s=f_r/f_s; 
N_s=(120*f_s)/P;
N_r=N_s*(1-s);
N_r=round(N_r);
disp(sprintf("The speed of the motor is %d rpm",N_r));
E_s=v/sqrt(3);
E_r=E_s*(1/ratio); 
E_r_dash=s*E_r;
disp(sprintf("The rotor induced emf above 2 Hz is %f V",E_r_dash));

//END

