//Chapter 13, Problem 2, Figure 13.4
clc;
A=[6 4;4 5];
B=[4;2];
X=A\B;
I1=X(1,1);                  //I1 and I2 is a branch current
I2=X(2,1);
disp("From figure 13.5");
disp("Using Kirchhoff’s current law and labeling the current directions on the circuit");
disp("Divide the circuit into two loops and apply Kirchhoff’s voltage law to each.");
printf("we get \n 6I1 + 4I2 = 4 \n 4I1 + 5I2 =2\n\n");
printf(" By solving both equations, we get \n");
printf("I1 = %.3f A\n",I1);
printf("I2 = %.3f A\n",I2);
printf("I1+I2 = %.3f A",I1+I2);
