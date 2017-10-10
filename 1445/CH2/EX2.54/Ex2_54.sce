//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 54 Read example 53 of the Book

clc;
disp("CHAPTER 2");
disp("EXAMPLE 54");

//VARIABLE INITIALIZATION
C=2.5/(10^6);                  //capcaitance in Farads
R=15;                          //in Ohms
L=260/1000;                    //in Henry

//SOLUTION

//solution (i)
f_r=(1/(2*%pi))*sqrt((1/(L*C)-(R^2/L^2)));
f_r=round(f_r);                //to round off the value
disp(sprintf("(i) The resonant frequency is %d Hz",f_r));

//solution (ii)
q_factor=(2*%pi*f_r*L)/R;
disp(sprintf("(ii) The Q-factor of the circuit is %f",q_factor));

//solution (iii)
Z_r=L/(C*R);
disp(sprintf("(iii) The dynamic impedance of the circuit is %f Ω",Z_r));

//END
