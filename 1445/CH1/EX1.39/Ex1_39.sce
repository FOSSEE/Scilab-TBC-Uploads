//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 39

clc;
disp("CHAPTER 1");
disp("EXAMPLE 39");

//VARIABLE INITIALIZATION
v=2;                          //in Volts
r=2;                          //in Ohms

//SOLUTION
z_star=r/3;
req1=(r/3)+r;
req2=(r/3)+r;
req3=(req1*req2)/(req1+req2);
req4=(r/3)+req3;
req5=(req4*r)/(req4+r);
I=v/req5;
disp(sprintf("The value of I is %d A",I));

//END
