//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 33

disp("CHAPTER 8");
disp("EXAMPLE 33");

//VARIABLE INITIALIZATION
v_t=230;                       //in Volts
N1=1500;                       //in rpm
I_a1=20;                       //in Amperes
r_a=0.3;                       //armature resistance in Ohms
r_se=0.2;                      //series field resistance in Ohms

//SOLUTION

//solution (a)
E_b=0;                         //at starting
nr1=v_t-I_a1*(r_a+r_se);       //value of numerator
r_ext=nr1/I_a1;
disp(sprintf("(a) At starting, the resistance that must be added is %f Ω",r_ext));

//solution (b)
I_a2=I_a1;
N2=1000;
ratio=N2/N1;
nr2=v_t-I_a2*(r_a+r_se);
r_ext=((ratio*nr1)-nr2)/(-I_a2);
disp(sprintf("(b) At 1000 rpm, the resistance that must be added is %f Ω",r_ext));

//END
