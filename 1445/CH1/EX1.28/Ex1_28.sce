//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 28

clc;
disp("CHAPTER 1");
disp("EXAMPLE 28");

//VARIABLE INITIALIZATION
I1=5;                          //current source in Amperes
va=100;                        //voltage source in Volts
r1=20;                         //in Ohms
r2=10;                         //in Ohms
r3=20;                         //in Ohms

//SOLUTION
IN=I1-(va/r1);                 //using nodal analysis at point 'a'
rN=r1+((r3*0)/(r3+0));
I=(rN*IN)/(rN+r2);
disp(sprintf("By Norton Theorem, the value of I is %d A",I));

//END
