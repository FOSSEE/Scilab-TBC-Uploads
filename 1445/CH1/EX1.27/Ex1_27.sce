//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 27

disp("CHAPTER 1");
disp("EXAMPLE 27");

//VARIABLE INITIALIZATION
I1=5;                          //current source in Amperes
vb=100;                        //voltage source in Volts
r1=20;                         //in Ohms
r2=10;                         //in Ohms
r3=20;                         //in Ohms

//SOLUTION
va=I1*r1;                      //by applying node analysis at point 'a'
vth=va-vb;                     //Thevenin voltage vth=vab
rth=r1+((r3*0)/(r3+0));        //Thevenin resistance
I=vth/(rth+r2);                
disp(sprintf("By Thevenin Theorem, the value of I is %d A",I));

//END
