//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 22 (mentioned as 'example 21' in the book)

clc;
disp("CHAPTER 2");
disp("EXAMPLE 22");

//VARIABLE INITIALIZATION
L=0.1                           //in Henry
C=8*10^-6                       //in Farad
R=10                            //in Ohms 
//SOLUTION

//solution (i)
fr=1/(2*%pi*sqrt(L*C));         //resonant frequency
disp("SOLUTION (i)");
disp(sprintf("For series circuit, resonant frquency is %3f Hz",  fr)); 
disp(" ");

//solution (ii)
w=2*%pi*fr;
Q=w*L/R; 
disp("SOLUTION (ii)");
disp(sprintf("The Q-factor at resonance is %3f kΩ", Q));

//solution (iii)
bw=R/(2*%pi*L);
f1=fr+bw/2;
disp("SOLUTION (iii)");
disp(sprintf("Half power frequencies  are %3f Hz and %3f Hz", f1,fr));

//END

