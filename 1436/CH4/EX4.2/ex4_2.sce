// Example 4.2, page no-209
clear
clc

//(a)
Cc=1.0
C=0.7*Cc
m=0.005
k=50
w=sqrt((k/m)-(C/(2*m))^2)
printf("(a)\nw=%.1f rad/s",w)
//(b)
w1=250
theta=C*w1/(k-m*w1^2)
printf("\ntheta=%f",theta)
fi=atan(-theta)
fi=fi*180/%pi
printf("\nfi = %d°",fi)
