//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 28

disp("CHAPTER 1");
disp("EXAMPLE 28");

//VARIABLE INITIALIZATION
I1=5;                          //current source in Amperes
va=100;                        //voltage source in Volts
r1=20;                         //in Ohms
r2=10;                         //in Ohms
r3=20;                         //in Ohms

//SOLUTION
In=I1-(va/r1);                 //since a and b are shorted hence va=vb
rn=r1+((r3*0)/(r3+0));
I=(rn*In)/(rn+r2);
disp(sprintf("By Norton Theorem, the value of I is %d A",I));

//END
