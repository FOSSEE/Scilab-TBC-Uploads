//Chapter 12, Problem 9
clc;
Id=100*10^-3;                       //operating drain current
dVgs=-0.1;                          //change in gate-source voltage
gfs=0.25;
dId=dVgs*gfs;                       //calculating change in drain current
Id1=Id+dId;                         //new value of drain current
disp("(a)");
printf("Change in drain current = %d mA\n\n\n",dId*1000);
disp("(b)");
printf("New value of drain current = %d mA",Id1*1000);

