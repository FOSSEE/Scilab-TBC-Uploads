// sum 9-1
clc;
clear;
p1=2;
d=16;
dt1=d-(0.93825*p1);
At1=%pi*dt1^2/4;
p2=1.5;
d=16;
dt2=d-(0.93825*p2);
At2=%pi*dt2^2/4;

  // printing data in scilab o/p window
  printf("At1 is %0.1f mm^2     ",At1);
  printf("\n At2 is %0.1f mm^2     ",At2);