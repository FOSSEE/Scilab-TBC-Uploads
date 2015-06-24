//Chapter 8, Problem 2
clc;
B=0.9;                  //flux density
I=20;                   //current 
l=30*10^-2;             //length of the conductor
//Calculating force when conductor is at right angle
F=B*I*l;
//Calculating force when conductor is inclined at 30◦ to the field
F1=B*I*l*sin(%pi/6);
printf("Force when conductor is at right angle = %f N\n\n\n",F);
printf("Force when conductor is inclined at 30◦ to the field = %f N",F1);
