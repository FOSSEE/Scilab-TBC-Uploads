//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 56

disp("CHAPTER 1");
disp("EXAMPLE 56");

//VARIABLE INITIALIZATION
r=1;                              //this is an assumption
r1=r*1;                           //in Ohms
r2=r*2;                           //in Ohms
r3=r*3;                           //in Ohms

//SOLUTION
ra=r1+r2+((r1*r2)/(r1+r2));
rb=r2+r3+((r2*r3)/(r2+r3));
rc=r1+r3+((r1*r3)/(r1+r3));
disp(sprintf("The equivalent delta values are %f Ω, %f Ω and %f Ω",ra,rb,rc));

//END

