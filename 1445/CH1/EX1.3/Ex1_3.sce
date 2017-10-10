//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 3

clc;
disp("CHAPTER 1");
disp("EXAMPLE 3");

//VARIABLE INITIALIZATION
r1=4.6;                        //in Ohms
r2=7.6;                        //in Ohms 


//star values
rc=3;
rd=7;
re=5;

//SOLUTION
//converting star with points C, D and E to delta CDE
r=(rc*rd)+(rd*re)+(re*rc);     //'r' is the resistance that appears in the numerator of the equation of star-delta conversion

//delta values rcd, rde and rec
rcd=r/re; 
rde=r/rc; 
rec=r/rd; 
req1=(8*rec)/(8+rec);          //equivalent resistance between C and E 
req2=(6*rde)/(6+rde);          //equivalent resistance between D and E
req3=(4*rcd)/(4+rcd);          //equivalent resistance between C and D
req4=req2+req3;              
req5=(req1*req4)/(req1+req4);  //parallel combination of resistors
req6=req5+r1;                  //series combination of resistors
req7=(req6*r2)/(req6+r2);      
disp(sprintf("The equivalent resistance between points A and B is %f Ω",req7));

//END



 
