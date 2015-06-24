//Chapter2,Ex2.25,Pg2.30
clc;
disp("Refer to the diagram shown in the figure")
A=[8 -1;-2 17]
B=[50;-500]
V=A\B
printf("\n V1=%.2f V \n",V(1))
printf("\n V2=%.2f V \n",V(2))
printf("\n I1=%.2f \n",-V(1)/2)
printf("\n I2=%.2f \n",(V(1)-V(2))/10)
printf("\n I3=%.2f \n",(V(2)+50)/2)
