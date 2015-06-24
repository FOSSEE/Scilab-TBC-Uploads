//Chapter 9

//Example 9_4
//Page 215

clear;clc;

r=1.24/2;
d12=2;
d23=2.5;
d31=4.5;

deq=(d12*d23*d31)^(1/3)*100;
printf("Equivalent equilateral spacing = %.2f cm \n\n", deq);

loop_l=(1e-7)*(0.5+2*log(deq/r));

printf("Inductance/phase/m = %.2f*10^-7 H \n\n", loop_l*1e7 );
printf(" Inductance/phase/km = %.3f mH \n\n", loop_l*1e6 );