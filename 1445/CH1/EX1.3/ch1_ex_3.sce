//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 3

disp("CHAPTER 1");
disp("EXAMPLE 3");

//VARIABLE INITIALIZATION
//converting star with points C, D and E into delta CDE
//star values
rc=3;
rd=7;
re=5;

//SOLUTION
//delta values
r=(rc*rd)+(rd*re)+(re*rc);
rcd=r/re; 
rde=r/rc; 
rec=r/rd; 
req1=(8*rec)/(8+rec);          //equivalent resistance between C and E 
req2=(6*rde)/(6+rde);          //equivalent resistance between D and E
req3=(4*rcd)/(4+rcd);          //equivalent resistance between C and D
req4=req2+req3;              
req5=(req1*req4)/(req1+req4); 
req6=req5+4.6;              
req7=(req6*7.6)/(req6+7.6); 
disp(sprintf("The equivalent resistance between points A and B is %f Ω",req7));

//END



 
