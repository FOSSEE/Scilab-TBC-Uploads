//Chapter 2,Ex2.15,Pg2.23
clc;
disp("Refer to the diagram shown in the figure")
a=[11 -10 0;0 -1 1;2 -3 -3]
b=[2;4;0]
i=a\b
printf("\n I1 = %.2f A\n",i(1))
printf("\n I2 = %.2f A\n",i(2))
printf("\ I3=%.2f A\n",i(3))
printf("\n Current through 10 ohms resistor = %.2f A\n",i(1)-i(2))
