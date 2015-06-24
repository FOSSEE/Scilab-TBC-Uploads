//Network Theorem 2
//pg no 3.17
//example 3.16
a=30;
b=20;
c=50;
d=5;
e=24;
v=220;
x=(v/(a+c));
y=(v/(b+d));
z=(20*y)-(30*x);
r=((a*c)/(a+c))+((b*d)/(b+d));
i=z/(r+e);
//Calculation the Vth (Thevenin's voltage)
disp("removing the 24 Ohm resistor from the network");
printf("\nI1 = %.2f A",x);
printf("\nI2 = %.1f A",y);
printf("\nWriting Vth equation, \n Vth = %.1f V",z);
//Calculation of Rth (Thevenin's resistance)
disp("replacing the 220 V source with short circuit");
printf("\nRth = %.2f Ohm",r);
//Calculation of IL (load current)
printf("\nIL = %.f A",i);