//Chapter 2,Ex2.16,Pg2.24
clc;
disp("Refer to the diagram shown in the figure")
a=[1 0 -1;-1 4 -4;1 -6 3]
b=[7;-7;0]
i=a\b
printf("\n I1 = %.1f A\n",i(1))
printf("\n I2 = %.1f A\n",i(2))
printf("\ I3=%.0f A\n",i(3))
printf("\n Current through 3 ohms resistor = %.1f A\n",i(2)-i(3))
