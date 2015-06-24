//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 57

disp("CHAPTER 1");
disp("EXAMPLE 57");

//VARIABLE INITIALIZATION
v=10;                          //voltage source in Ohms
r1=2;                          //RHS resistance in Ohms
r2=2;                          //in Ohms
r3=4;                          //in Ohms
r4=4;                          //in Ohms
I=20;                          //current source in Amperes

//SOLUTION

r=r1+r2;
//deactivating voltage source of 10Ω
v1=-I/((1/r)+(1/r3)+(1/r4));   //from equation
I1=v1/r3;

//deactivating current source of 20A
v2=(v/r)/((1/r)+(1/r3)+(1/r4)); 
I2=v2/r3;

I_tot=I1+I2;
if(I_tot>0)
disp(sprintf("The value of I is %.2f A (upward)",I_tot));
else
disp(sprintf("The value of I is %.2f A (downward)",-I_tot));

//END

