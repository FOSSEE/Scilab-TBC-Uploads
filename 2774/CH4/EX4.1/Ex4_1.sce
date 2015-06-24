clc
//initialization of variables
K=100 // spring constant in kN/m
d=0.8 // dispacement of spring in m
 // to get total work we integrate from 0 to 0.8 displacement
x1=0; // lower limit of integration
x2=0.8;  // upper limit of integration
W12=integrate('K*x','x',x1,x2);
Q12=W12; // by first law of thermodynamics
printf("The Heat transfer is "+string(Q12)+" J")





