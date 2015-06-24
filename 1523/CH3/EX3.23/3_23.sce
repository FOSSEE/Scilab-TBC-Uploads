//Network Theorem 2
//pg no 3.28
//example 3.23
disp("removing the 1 Ohm resistor from the network");
disp("writing current equation for meshes 1 & 2 ");
disp("I1= -3 A");....//equation 1
disp("I2=1 A");....//equation 2
//Calculation of Vth (Thevenin's voltage)
a=-3;
b=1;
r=2;
v=4-2*(a-b);
printf("\nWriting Vth equation, \n Vth = %.f V",v);
//Calculation of Rth (Thevenin's resistance)
disp("replacing the voltage source with short circuit and current source by open circuit");
disp("Rth = 2 Ohm");
//Calculation of IL (load current)
i=v/(r+1);
printf("\nIL = %.f A",i);