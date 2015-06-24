//Zo of a transmission line
//given
clc
epsilon_r=1//assume as 1 according to question
s=0.49//cm
d=0.1//cm 
Zo=(276/sqrt(epsilon_r))*log10((2*s)/d)
Zo=round(Zo*100)/100///rounding off decimals
disp(Zo,'the Zo of a transmission line is given in ohm  as follows:')//ohm
