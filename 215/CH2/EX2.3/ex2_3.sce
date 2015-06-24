//Example 2.3
//Calculate the voltage and power dissipated acreoss the resistor terminals
//From figure 2.24b
disp("Given")
disp("R=560 ohm ; i=428mA")
R=560;i=428*10^-3;
//Voltage across a resistor is
disp("v=R*i")
v=R*i;
printf("Voltage across a resistor=%3.3fV\n",v)

//Power dissipated by the resistor is
disp("p=v*i")
p=v*i;
printf("Power dissipated by the resistor=%3.3fW\n",p)
