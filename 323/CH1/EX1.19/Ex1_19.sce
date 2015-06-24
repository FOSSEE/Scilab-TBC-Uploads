//Chapter 1,Example 1.19,Pg 1.24
clc;
disp("Refer to the figure shown in the diagram")
disp("Assign branch currents as shown in the figure")
disp("I2-I3=13")
disp("-20I1+8I2=0")
disp("-12I1-16I2=0")
disp("By solving the equations we can obtain the result as follows")
A=[0 1 -1;-20 8 0;-12 0 -16]
B=[13;0;0]
I=A\B
printf("\n I1= %.0f A \n",I(1,:))
printf("\n I2= %.0f A \n",I(2,:))
printf("\n I3= %.0f A \n",I(3,:))
