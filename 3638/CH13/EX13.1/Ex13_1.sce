//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
//Vc(t)=V0*(1-exp(-t/(R*C))) is the voltage across capacitance in an RC circuit
//Hence, the time t=R*C*(-log(1-Vc/V0))

//The Rise time is the time taken by a system to rise from 10% to 90% of maximum value
//So, it is given as Tr=T90-T10 where T90 is time when Vc is 90% of maximum value and T10 is time when Vc is 10% of maximum value
//i.e. Tr=R*C*(-log(1-0.9))-R*C*(-log(1-0.1))
//Let Tr=R*C*k; where k=log(1-0.1))-log(1-0.9)
k=log(1-0.1)-log(1-0.9);
mprintf("\n The Rise Time Tr=%.2fRC",k);

//Now, The 3dB bandwidth is given as Deltaf=1/(2*%pi*R*C);
//Let Deltaf=m/(R*C); where m=1/(2*%pi)
m=1/(2*%pi);
mprintf("\n The 3dB bandwidth Deltaf=%.2f/RC",m);

//By multiplying expressions of Tr and Deltaf, we eliminate RC from the expressions
//Rearranging te terms, we get Tr in terms of Deltaf 
mprintf("\n Rise time in terms of Bandwidth is given as:");
mprintf("\n Tr=%.2f/Deltaf",k*m);
