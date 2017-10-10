//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 6

clc;
disp("CHAPTER 10");
disp("EXAMPLE 6");

//VARIABLE INITIALIZATION
P=4;                         //number of poles
f_r=2;                       //rotor frequency in Hertz
f_s=50;                      //stator frequency in Hertz
E=400;                       //line voltage in Volts
ratio=1/0.5;                 //stator to rotor turn ratio

//SOLUTION
s=f_r/f_s; 
N_s=(120*f_s)/P;             //synchronous speed 
N_r=N_s*(1-s);               //rotor speed
N_r=round(N_r);
disp(sprintf("The speed of the motor is %d rpm",N_r));
E_s=E/sqrt(3);               //phase voltage=(line voltage)/sqrt(3) for star connection
E_r=E_s*(1/ratio); 
E_r_dash=s*E_r;
disp(sprintf("The rotor induced emf above 2 Hz is %f V per phase",E_r_dash));  //Answer given in the book is wrong

//END

