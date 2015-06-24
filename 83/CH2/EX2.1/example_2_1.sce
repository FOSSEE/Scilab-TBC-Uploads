//Chapter 2
//Example 2.1
//page 56
//To find GMD of the conductor
//From the given the text book,leaving out the factor of "r",we have the seven possible distances
clear;clc;
D1=0.7788*2*2*(2*sqrt(3))*4*(2*sqrt(3))*2;
//since there are 7 identical conductors,the above products remains same dor all D's
D2=D1;
D3=D1;
D4=D1;
D5=D1;
D6=D1;
D7=D1;
Ds=(D1*D2*D3*D4*D5*D6*D7)^(1/(7*7));
printf("\n GMD of the conductor is %0.4fr",Ds);
