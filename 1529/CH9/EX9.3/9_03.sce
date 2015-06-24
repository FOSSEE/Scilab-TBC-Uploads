//Chapter 9, Problem 3
clc;
v=15;                       //velocity of conductor
l=0.02;                     //length of conductor
A=2*2*10^-4;                //area of conductor
phi=5*10^-6;                //flux
Q1=%pi/2;                   //converting 90 degree into radian
Q2=%pi/3;                   //converting 60 degree into radian
Q3=%pi/6;                   //converting 30 degree into radian
B=phi/A;                    //calculating flux density
E90=B*l*v*sin(Q1);          //calculating emf 
E60=B*l*v*sin(Q2);
E30=B*l*v*sin(Q3);
disp("(a)");
printf("E.M.F at 90◦ =%f V\n\n",E90*1000);
disp("(b)");
printf("E.M.F at 60◦ =%f V\n\n",E60*1000);
disp("(c)");
printf("E.M.F at 30◦ =%f V\n\n",E30*1000);
