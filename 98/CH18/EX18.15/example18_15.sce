//Chapter 18
//Example 18_15
//Page 450

clear;clc;

kv=11;
mva=10;
X0=%i*0.05;
X1=%i*0.15;
X2=%i*0.15;

Er=1;
I0=Er/(X0+X1+X2);
I1=I0;
I2=I0;
Ir=3*I0;
Ish=Er/X1;
ratio=Ir/Ish;

disp("Line to ground fault: ");
printf("I1=I2=I0=j(%.2f) A \n", imag(I0));
printf("Fault current = j(%.2f) A \n\n", imag(Ir));

disp("Three phase fault: ");
printf("Fault current = j(%.2f) A \n\n", imag(Ish));
printf("Ratio of two fault currents = %.3f A \n\n", ratio);
printf("Thus single line to ground fault is %.3f times that due to dead short circuit on the 3 phases \n\n", ratio);




