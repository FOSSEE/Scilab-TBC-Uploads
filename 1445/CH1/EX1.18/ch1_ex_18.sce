//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 18

disp("CHAPTER 1");
disp("EXAMPLE 18");

//VARIABLE INITIALIZATION
v=7;                            //voltage source in Volts
I=7;                            //current source in Amperes
r1=1;                           //in Ohms
r2=2;                           //in Ohms
r3=1;                           //in Ohms
r4=2;                           //in Ohms
r5=3;                           //in Ohms

//SOLUTION
I2=0;                           //since mesh 2 is open
I1=v-I2;
I3=I1/6;                        //from the equation
vth=-(r2*I3)+v;
r=r1+r5;
rth=(r*r4)/(r+r4);
I=vth/(rth+r3);
vx=-I*r3; 
disp(sprintf("By Thevenin Theorem, the value of V_x is %d V",vx));

//END
