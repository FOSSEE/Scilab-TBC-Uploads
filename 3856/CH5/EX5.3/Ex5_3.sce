//How much work must be done by a heat pump when the outdoor temperature is 5 dgree and minus 10 degree

//Example 5.3

clc;

clear;

q2=5000;  //Amount of heat deliver by a pump in J

T2=295;  //Temperature of house in K

T1=278;  //Outdoor teperature in K

q1=abs(q2)*(T1/T2);  //Amount of heat in J

w1=abs(q2)-q1;  //Amount of work done by a heat pump when the outdoor temperature is 5 dgree in J

printf("(a)Amount of work done when the outdoor temperature is 5 dgree = %.0f J",w1);

T3=263;  //Outdoor teperature in K

q1=abs(q2)*(T3/T2);  //Amount of heat in J

w2=abs(q2)-q1;  //Amount of work done by a heat pump in J

printf("\n(b)Amount of work done when the outdoor temperature is minus 10 degree = %.0f J",w2);
