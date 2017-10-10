//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 56

clc;
disp("CHAPTER 1");
disp("EXAMPLE 56");

//VARIABLE INITIALIZATION
r=1;                              //this is an assumption
r1=r*1;                           //in Ohms
r2=r*2;                           //in Ohms
r3=r*3;                           //in Ohms

//SOLUTION
req=(r1*r2)+(r2*r3)+(r3*r1);     //'req' is the equivalent resistance that appears in the numerator of the equation of star-delta conversion
ra=req/r3;
rb=req/r1;
rc=req/r2;
disp(sprintf("The equivalent delta values are ra=( %f x r) Ω, rb=( %f x r) Ω and rc=( %f x r) Ω",ra,rb,rc));

//END

