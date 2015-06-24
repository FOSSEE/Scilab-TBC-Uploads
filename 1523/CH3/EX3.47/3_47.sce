//Network Theorem 1
//page no-3.52
//example3.46
//calculation of Vth
disp("Removing the variable resistor RL from the network:");
disp("By star-delta transformation");
a=5;
b=20;
c=9;
v=100;
i=v/(a+a+b+c+c);
disp("Writing Vth equation,");
vth=v-(14*i);
printf("\nVth = %.2f V",vth);
//calculation of Rth
disp("replacing the voltage source with short circuit ");
m=23.92;
printf("\nRth = %.2f Ohm",m);
//calculation of RL
disp("For maximum power transfer");
printf("\nRth = RL =%.2f Ohm",m);
//calculation of Pmax
n=(vth^2)/(4*m);
printf("\nPmax = %.2f W",n);