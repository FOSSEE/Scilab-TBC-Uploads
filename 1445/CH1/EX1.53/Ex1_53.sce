//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 53

clc;
disp("CHAPTER 1");
disp("EXAMPLE 53");

//VARIABLE INITIALIZATION
v1=10;                          //LHS voltage source in Volts
v2=4;                           //RHS voltage source in Volts
r1=2;                           //LHS resistance in Ohms
r2=3;                           //in Ohms
r3=10;                          //in Ohms
r4=3;                           //in Ohms
r5=1;                           //RHS resistance in Ohms

//SOLUTION
van=v1*(r2/(r1+r2));            //voltage divider law
vbn=-v2*(r4/(r5+r4));           //voltage divider law
ran=(r1*r2)/(r1+r2);
rbn=(r4*r5)/(r4+r5);
vab=(ran*0)+van-vbn+(rbn*0);    //current is zero as AB is open circuited when Thevenin's Theorem is applied 
disp(sprintf("The Thevenin voltage is %d V",vab));

//END


