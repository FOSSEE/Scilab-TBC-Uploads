//Chapter 13, Problem 3, Figure 13.7
clc;
A=[0.5 2;-5 7];
B=[16;12];
X=A\B;
I1=X(1,1);                  //I1 and I2 is a branch current
I2=X(2,1);
disp("From figure 13.8");
disp("The network is divided into two loops");
printf("Applying Kirchhoff’s voltage law to both loops gives,");
printf("16 = 0.5I1 + 2I2 \n12 = −5I1 + 7I2\n\n\n");
printf("Solving these equation we get,\n");
printf("I1 = %.2f A\n",I1);
printf("I2 = %.2f A\n",I2);
printf("Current flowing in R3 = %.2f A",I1-I2);
