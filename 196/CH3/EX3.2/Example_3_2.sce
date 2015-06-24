//Chapter 3
//Example 3-2
//ProbOnCurrentinOpamp 
//Page 47,figure 3-2
clear;clc;
//Given
Vout=10;//output voltage
I=0.1*(10^-3);//current through Rf in amperes
Rl=25*(10^3);//Load resistance in ohms
//Calculate
//Example 3-1(a)
Il=Vout/Rl;
printf("\n\n Value of load current =  %.4f A \n\n",Il)
//Example 3-1(b)
Iout=I+Il;
printf("\n\n Total current into the output pin of the opamp =  %.4f A \n\n",Iout)
printf("\n\n The input resistance seen by Ei is Ri. In order to keep input resistance of the circuit high. Ri should be equal to or greater than 10KiloOhm") 