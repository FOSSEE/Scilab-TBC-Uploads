//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 4

disp("CHAPTER 1");
disp("EXAMPLE 4");

//VARIABLE INITIALIZATION
r1=1;                         //LHS resistance in Ohms
r2=2;                         //in Ohms
r3=3;                         //in Ohms
r4=4;                         //in Ohms
r5=5;                         //in Ohms
r6=6;                         //in Ohms
r7=7;                         //in Ohms
r8=8;                         //RHS resistance in Ohms

//SOLUTION

//To find resistance between a and b
req1=r1+r2;
req2=(req1*r3)/(req1+r3);
req3=req2+(r4+r5); 
req4=(req3*r6)/(req3+r6);
req5=req4+r7;
req6=(req5*r8)/(req5+r8);
disp(sprintf("The eqiuvalent resistance between points a and b is %f Ω",req6));

//To find resistance between c and d
req7=r7+r8;
req8=(req7*r6)/(req7+r6);
req9=req2+r5+req8;
req10=(req9*r4)/(req9+r4);
disp(sprintf("The eqiuvalent resistance between points c and d is %f Ω",req10));

//To find resistance between d and e
req11=req2+r4+r5;
req12=(req11*r6)/(req11+r6);
req13=(req12*req7)/(req12+req7);
disp(sprintf("The eqiuvalent resistance between points d and e is %f Ω",req13));

//END
