//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 36 // read it as example 35 in the book on page 2.90

disp("CHAPTER 2");
disp("EXAMPLE 36");

//VARIABLE INITIALIZATION 
R1=10;                           //in Ω
XL=15;                           //in  
R2=12;                           //
C=20;                            //capacitative reactance in Ω
V=230;                           // volts
f=50;                            //Hz
//
//SOLUTION
//Solution (a)
//conductance g, susceptance b
Z12=(R1^2 +XL^2);                //squared impedance Z^2 for branch 1
Z22=(R1^2 +C^2);                 //squared impedance Z^2 for branch 2
g1=R1/Z12;
g2=R2/Z22;
b1=-XL/Z12;                      
b2=C/Z22;
g=g1+g2;
b=b1+b2;
Y=sqrt(g^2+b^2);
I=V*Y;
disp("SOLUTION (a)");
disp(sprintf("The total current is %f Amp",  I));
pf=g/Y;
 
disp("SOLUTION (b)");
disp(sprintf("The power factor is %f", pf)); 
disp(" "); 
// 
//END

