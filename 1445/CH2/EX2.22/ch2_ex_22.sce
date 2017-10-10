//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 22 // read it as example 21 in the book on page 2.75

disp("CHAPTER 2");
disp("EXAMPLE 22");

//VARIABLE INITIALIZATION
L=0.1                           //in Henry
C=8                             //in mf, multiply by 10^-6 to convert to f
R=10                            //in ohms 
//SOLUTION

//solution (i)
//Resonance frequency for a series RLC circuitf = 1/2.π.sqrt(LC)
fr=1/(2*%pi*sqrt(L*C*10^-6));
disp("SOLUTION (i)");
disp(sprintf("For series circuit,Resonant frquency is %3f Hz",  fr)); 
disp(" ");

//solution (ii)
//Q-factor is Q=w.L/R= 2.π,fr.L/R
w=2*%pi*fr;
Q=w*L/R; 
disp("SOLUTION (ii)");
disp(sprintf("The Q-factor at resonance is %3f kΩ", Q));
// 
//solution (iii)
//Bandwidth (f2-f1)=R/(2.π.L), f1,f2 half power frequencies
bw=R/(2*%pi*L);
f1=fr+bw/2;
disp("SOLUTION (iii)");
disp(sprintf("half frequency 1 is  %3f Hz", f1));
disp(sprintf("half frequency 2 is  %3f Hz", fr));
//
//END

