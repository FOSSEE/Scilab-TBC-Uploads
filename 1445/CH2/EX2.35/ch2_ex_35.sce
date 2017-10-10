//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 35 // read it as example 34 in the book on page 2.88

disp("CHAPTER 2");
disp("EXAMPLE 35");

//VARIABLE INITIALIZATION 
R=100;                          //in Ω
L=0.2;                          //in Henry
C=20*10^(-6);                   //farads
V=240;                          // volts
f=50;                           //Hz
//
//SOLUTION
//Solution (a)
XL=2*%pi*f*L;
XC=1/(2*%pi*f*C);
//impedence Z=sqrt(R^2 +XL^2)
X=XL-XC;
Z=sqrt(R^2 +X^2);
disp("SOLUTION (a)");
disp(sprintf("The total impedence is %f Ω",  Z));
I=V/Z;
disp("SOLUTION (b)");
disp(sprintf("The total current is %f Amp", I));
Vr=I*R;
Vi=I*XL;
Vc=I*XC;
disp("SOLUTION (c)");
disp(sprintf("The voltage across resistance is %f V",Vr));
disp(sprintf("The voltage across inductance is %f V",Vi));
disp(sprintf("The voltage across capacitance is %f V",Vc));
pf=R/Z;
pc=V*I*pf;
disp("SOLUTION (d)");
disp(sprintf("The Power Factor is %f leading",  pf));
disp("SOLUTION (e)");
disp(sprintf("The Power consumed in the circuit is %f W",pc));
//XL=XC
f0=1/(2*%pi*sqrt(L*C));
disp("SOLUTION (f)");
disp(sprintf("Resonance will occur at %f Hz",f0));
disp(" "); 
// 
//END
