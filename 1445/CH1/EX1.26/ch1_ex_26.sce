//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 26

disp("CHAPTER 1");
disp("EXAMPLE 26");

//VARIABLE INITIALIZATION
I1=5;                          //current source in Amperes
v2=100;                        //voltage source in Volts
r1=20;                         //in Ohms
r2=10;                         //in Ohms
r3=20;                         //in Ohms

//SOLUTION
v1=(I1+(v2/r2))/((1/r1)+(1/r2));
I=(v1-v2)/r2;
disp(sprintf("By Nodal analysis, the value of I is %d A",I));

//END
