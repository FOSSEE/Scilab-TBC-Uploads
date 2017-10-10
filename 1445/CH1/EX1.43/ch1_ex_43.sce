//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 43

disp("CHAPTER 1");
disp("EXAMPLE 43");

//VARIABLE INITIALIZATION
I1=2;                           //in Amperes
I2=4;                           //in Amperes
v=2;                            //in Volts
r1=200;                         //in Ohms
r2=100;                         //in Ohms
r3=4;                           //in Ohms

//SOLUTION
req1=34;
Ia=I2*(r3/req1);
req2=24;
Iab=I1*(req2/req1);
I=Ia+Iab;
vab=I*10;
disp(sprintf("The voltage V_ab is %f V",vab));

//END

