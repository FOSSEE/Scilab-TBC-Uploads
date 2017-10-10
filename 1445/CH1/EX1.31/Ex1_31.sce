//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 31

clc;
disp("CHAPTER 1");
disp("EXAMPLE 31");

//VARIABLE INITIALIZATION
r1=6;                           //in Ohms
r2=4;                           //in Ohms
r3=4;                           //in Ohms
r4=4;                           //in Ohms
r5=6;                           //in Ohms
r6=6;                           //in Ohms
r7=6;                           //in Ohms
r8=8;                           //in Ohms
r9=4;                           //in Ohms
r10=10;                         //in Ohms
r11=10;                         //middle resistance in Ohms

//SOLUTION
//converting delta cde in a star
req1=r5+r6+r7;
req2=(r6*r7)/req1;
req3=(r5*r6)/req1;
req4=(r5*r7)/req1;

req5=r1+r2+r3;                  //on LHS of middle resistance
req6=r4+req2;                   //top LHS
req7=req4+r11;                  //equivalent middle resistance
req8=req3+r8+r9+r10;            //top RHS

req9=(req7*req8)/(req7+req8);   //parallel combination of resistors
req10=req9+req6;                //series combination of resistors
req11=(req5*req10)/(req5+req10);

disp(sprintf("The equivalent resistance between A and B is %d Ω",req11));

//END
