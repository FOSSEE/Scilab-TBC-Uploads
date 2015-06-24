//Chapter2,Ex2.21,Pg2.27
clc;
disp("Refer to the diagram shown in the figure")
a=[5 -2 0;10 -31 6;0 -4 9]
b=[-24;300;160]
v=a\b
printf("\n V1=%.2f V\n",v(1))
printf("\n V2=%.2f V\n",v(2))
printf("\n V3=%.2f V\n",v(3))
printf("\n Current through 5 ohms resistor = %.2f A\n",(v(3)-v(2))/5)