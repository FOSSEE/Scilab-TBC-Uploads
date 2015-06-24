//Network Theorem 2
//pg no 3.16
//example 3.15
a=10;
b=2;
c=(5*a)-(20*b);
x=20;
y=30;
z=5;
r=z+((x*y)/(x+y));
i=c/(r+c);
//Calculation of Vth(Thevenin's voltage)
disp("removing the 10 ohm resistor from the circuit");
printf("\nFor mesh 1, \nI1 = %.f A",a);
printf("\nApplying KVL to mesh 2,, \nI2 = %.f A",b);
printf("\nWriting Vth equation, \n Vth = %.f V",c);
//Calculation of Rth(Thevenin's Resistance)
disp("replacing the current source of 10 A with an open circuit  and voltage source of 100 V with a short circuit,");
printf("\nRth = %.f Ohm",r);
//Calculation of IL(load current)
printf("\nIL = %.2f A",i);