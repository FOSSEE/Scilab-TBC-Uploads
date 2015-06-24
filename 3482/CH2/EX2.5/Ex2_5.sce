clc
//page 39
mass=30;// kg
W=mass*9.81;// N, Weight of package
alpha=15;//degree
alpha=alpha*%pi/180;// Conversion into radian
F=W*sin(alpha);//N
printf("F= %.2f N",F);

