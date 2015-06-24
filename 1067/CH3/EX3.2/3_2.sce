
clear;
close;
clc;

R=10; 
L=0.1; 
f=50; 
w=2*%pi*f; 
k=sqrt((R^2)+((w*L)^2));
angle=atan(w*L/R); 
E=100; 
Em=sqrt(2)*E; 
A=Em*sin(angle)/k;
i1=A; 
Em=round(Em*10)/10;
i1=round(i1*10)/10;
mprintf("current in amperes for part1=%fA\n",i1);
mprintf("current in part 2& part 3= 0\n");
mprintf("the DC component vanishes if e=%fV",Em);//the error is due to the erroneous values in the textbook

t1=0.5*.02; 
i2=A*exp((-R)*t1/L);
mprintf("\ncurrent at .5 cycles for t1=%fsec \ncurrent in the problem = %fA",t1,i2);
t2=1.5*.02;
i3=A*exp((-R)*t2/L);
mprintf("\ncurrent at 1.5 cycles for t2=%fsec \ncurrent in the problem = %fA",t2,i3);
t3=5.5*.02;
i4=A*exp((-R)*t3/L);
mprintf("\ncurrent at 5.5 cycles for t3=%fsec \ncurrent in the problem = %fA",t3,i4);


disp("the difference in result is due to erroneous value in textbook.")
