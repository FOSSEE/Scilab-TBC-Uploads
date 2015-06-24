//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 43

disp("CHAPTER 1");
disp("EXAMPLE 43");

//VARIABLE INITIALIZATION
Is1=2;                          //first current source in Amperes
Is2=4;                          //second current source in Amperes
v=2;                            //in Volts
r1=200;                         //in Ohms
r2=100;                         //in Ohms
r3=4;                           //in Ohms

//SOLUTION
req1=34;
I1=Is2*(r3/req1);
req2=24;
Iab=Is1*(req2/req1);
I=Iab+I1;
vab=I*10;
disp(sprintf("By Superposition Theorem the voltage Vab is %.3f V",vab));

//END

