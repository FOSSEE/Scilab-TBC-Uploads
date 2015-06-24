//Chapter 2,Ex2.16,Pg2.24
clc;
disp("Refer to the diagram shown in the figure")
a=[15 -10 -5;0 1 -1;-15 12 6]
b=[50;2;0]
i=a\b
printf("\n I1 = %.0f A\n",i(1))
printf("\n I2 = %.2f A\n",i(2))
printf("\ I3=%.2f A\n",i(3))
printf("\n Current through 5 ohms resistor = %.1f A\n",i(1)-i(3))
