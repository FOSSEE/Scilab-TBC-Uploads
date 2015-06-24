//Network Theorem 2
//pg no 3.23
//example 3.20
disp("removing the 30 Ohm resistor from the network");
disp("Applying KVL to supermesh ");
disp("-I1+I2=13");....//equation 1
disp("15*I1+100*I2=150");....//equation 2
//Calculation of Vth (Thevenin's voltage)
a=3;
v=(40*a)-50;
printf("\nWriting Vth equation, \n Vth = %.f V",v);
//Calculation of Rth (Thevenin's resistance)
disp("replacing the voltage source with short circuit and current source by open circuit");
r=(75*40)/(75+40);
printf("\nRth = %.2f Ohm",r);
//Calculation of IL (load current)
i=v/(r+30);
printf("\nIL = %.2f A",i);