//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 34 // read it as example 33 in the book on page 2.87

disp("CHAPTER 2");
disp("EXAMPLE 34");

//VARIABLE INITIALIZATION 
r=100;                          //in Ω
c=40*10^(-6);                   //
V=400;                          // volts
f=50;                           //Hz
//
//SOLUTION
XC=1/(2*%pi*f*c); //capacitative reactance
//impedence Z=sqrt(R^2 +XL^2)
Z=sqrt(r^2 +XC^2);
I=V/Z;
pf=r/Z;
pc=V*I*pf;
disp(sprintf("The total current is %.2f Amp",  I));
disp(sprintf("The Power Factor is %.3f leading",  pf));
disp(sprintf("The Power consumed in the circuit is %.0f W",pc));
disp(" "); 
// 
//END
