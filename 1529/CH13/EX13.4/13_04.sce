//Chapter 13, Problem 4, Figure 13.9
clc;
I=8;                    //total current
A=[13 -11;16 32];
B=[54;112];
X=A\B;
I1=X(1,1)                  //I1 and I2 is a branch current
I2=X(2,1);
disp("from figure 13.10");
printf("Applying Kirchhoff’s voltage law to loop 1 and 2, we get");
printf("13I1 − 11I2 = 54\n 16I1 + 32I2 = 112\n\n\n");
printf("Solving the above simultaneous equations, we get\n");
printf("I1 = %d A\n",I1);
printf("I2 = %d A\n",I2);
printf("I-I1 = %d A\n",I-I1);
printf("I1-I2 = %d A\n",I1-I2);
printf("I-I1+I2 = %d A\n\n\n",I-I1+I2);
printf("Therefore,\n");
printf("Current flowing in the 2ohm resistor = %f A\n",I1);
printf("Current flowing in the 14ohm resistor = %f A\n",I-I1);
printf("Current flowing in the 32ohm resistor = %f A\n",I2);
printf("Current flowing in the 11ohm resistor = %f A\n",I1-I2);
printf("Current flowing in the 3ohm resistor = %f A\n",I-I1+I2);
