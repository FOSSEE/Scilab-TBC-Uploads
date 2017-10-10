//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 20 // read it as example 19 in the book on page 2.72

clc;
disp("CHAPTER 2");
disp("EXAMPLE 20");

//VARIABLE INITIALIZATION
L=0.5                           //in Henry
C=5                             //in mf, multiply by 10^-6 to convert to f
R=25                            //in ohms 
//SOLUTION

//solution (i)
//Resonance frequency f = (1/2π)sqrt((1/LC)-R^2/L^2)
fr=(1/(2*%pi))*sqrt((1/(L*C*10^-6))-(R^2)/(L^2));
disp("SOLUTION (i)");
disp(sprintf("For parallel circuit,Resonant frquency is %3f Hz",  fr)); 
disp(" ");

//solution (ii)
//Total circuit impedance at resonance is Z=L/RC
z=L/(R*C*10^-6);
disp("SOLUTION (ii)");
disp(sprintf("Total impedence at resonance is %3f kΩ",  z/1000));
// 
//solution (iii)
//Bandwidth (f2-f1)=R/(2.π.L)
bw=R/(2*%pi*L);
disp("SOLUTION (iii)");
disp(sprintf("Bandwidth is %3f Hz", bw));
//
//solution (iv)
//Quality factor Q=1/R.sqrt(L/C)
Q=(1/R)*sqrt(L/(C*10^-6));
disp("SOLUTION (iv)");
disp(sprintf("Quality Factor is %3f", Q)); 
//solution in the book is wrong as there is a total mistake in imaginery part 7.2+0.798=11.598
//
//END
