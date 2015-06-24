//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 58

disp("CHAPTER 1");
disp("EXAMPLE 58");

//VARIABLE INITIALIZATION
v1=20;                       //LHS voltage source in Volts
v2=5;                        //RHS voltage source in Volts
r1=100;                      //LHS resistance in Ohms
r2=2;                        //in Ohms
r3=1;                        //in Ohms
r4=4;                        //in Ohms
r5=1;                        //RHS resistance in Ohms

//SOLUTION

//applying Thevenin's Theorem
//Thevnin's equivalent resistance, r_th is same as r_AB
r_th=((r3+r5)*r2)/((r3+r5)+r2); 
v_th=(v1-v2)/2;              //from the equation
I1=v_th/(r4+r_th);
v1=I1*r4;
disp(sprintf("By Thevenin Theorem, the value of V is %d V",v1)); 

//applying Norton's Theorem
//Norton's equivalent resistance, r_n is same as r_AB
r_n=((r3+r5)*r2)/((r3+r5)+r2); 
I_n=(v1-v2)/r2;               //since v_A=0
I2=r_n*(I_n/(r4+r_n));
v2=I2*r4;
disp(sprintf("By Norton Theorem, the value of V is %d V",v2));

//END

