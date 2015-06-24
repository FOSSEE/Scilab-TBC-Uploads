//EX9_9 PG-9.24
clc
L1=0.5e-3;
L2=1e-3;
C=0.2e-6;
Leq=L1+L2;//total inductance  for Hartley oscillator
f=1/(2*%pi*sqrt(Leq*C));
printf("\n Therefore frequency of oscillation is %.f Hz \n",f)
//there is a slight difference between the answer given in the book
//and the and output in the book they have taken the approximate value 
