//Network Theorem 1
//page no-3.56
//example3.49
//calculation of Vth
disp("Removing the variable resistor RL from the network:");
x=100;
a=10;
b=20;
c=30;
d=40;
i1=x/(a+c);
i2=x/(b+d);
printf("\nI1 = %.1f A",i1);
printf("\ni2 = %.2f A",i2);
disp("Writing Vth equation,");
x=2.5;
y=1.66;
v=(20*y)-(10*x);
printf("\nVth = %.1f V",v);
//calculation of Rth
disp("replacing the voltage source of 100V with short circuit ");
m=((a*c)/(a+c))+((b*d)/(b+d));
printf("\nRth = %.2f Ohm",m);
//calculation of RL
disp("For maximum power transfer");
printf("\nRth = RL =%.2f Ohm",m);
//calculation of Pmax
n=(v^2)/(4*m);
printf("\nPmax = %.2f W",n);