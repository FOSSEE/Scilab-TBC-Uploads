//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 37 // read it as example 36 in the book on page 2.93

disp("CHAPTER 2");
disp("EXAMPLE 37");

//VARIABLE INITIALIZATION 
R1=20;                              //
XL=15;                              // in ohms
R2=0;                               //assumed
C=50;                               //in ohms capacitative reactance
V=200;
f=60;                               //Hz 
//
//SOLUTION
//Solution (a)
//conductance g, susceptance b
Z1=sqrt(R1^2 +XL^2);                //squared impedance Z^2 for branch 1
Z2=sqrt(R2^2 +C^2);                 //squared impedance Z^2 for branch 2
i1=V/Z1;
i2=V/Z2;
disp("SOLUTION (a)");
disp(sprintf("The  current in Branch 1 is %d Amp",  i1));
disp(sprintf("The  current in Branch 2 is %d Amp",  i2));
phi1=atan(XL/R1);
phi2=%pi/2;                         //atan(C/R2);                    //R2=0, output is infinity
Icos=i1*cos(phi1)+i2*cos(phi2);     // phi in radians
Isin=-i1*sin(phi1)+i2*sin(phi2);     // phi in radians
I=sqrt(Icos^2+Isin^2);
//
disp("SOLUTION (b)");
disp(sprintf("The total current is %.2f Amp",  I));
//
pf=Icos/I; //power factor
disp("SOLUTION (c)");
disp(sprintf("The power factor is %.3f ", pf)); 
disp(" "); 
// 
//END


