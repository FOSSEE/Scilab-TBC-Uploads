//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 33 // read it as example 32 in the book on page 2.86

disp("CHAPTER 2");
disp("EXAMPLE 33");

//VARIABLE INITIALIZATION 
r1=20;                          //in Ω
r2=30;                          //
r3=40;                          //
l1=0.5;                         //in Henry
l2=0.3;                         //
l3=0.2;                         //
V=230;                          // volts
f=50;                           //Hz
//coils connected in series
// 
//SOLUTION
R=r1+r2+r3;
L=l1+l2+l3;
XL=2*%pi*f*L;
//impedence Z=sqrt(R*2 +XL^2)
Z=sqrt(R^2 +XL^2);
I=V/Z;
pf=R/Z;
pc=V*I*pf;
disp(sprintf("The total current is %f Amp",  I));
disp(sprintf("The Power Factor is %f lagging",  pf));
disp(sprintf("The Power consumed in the circuit is %f W",  pc));
disp(" "); 
// 
//END

