//Problem 10.06: (a) A current of 20 A flows through a load having a resistance of 2 ohms. Determine the power dissipated in the load. (b) A wattmeter, whose current coil has a resistance of 0.01 ohm is connected as shown in Figure 10.13. Determine the wattmeter reading.

//initializing the variables:
I = 20; // in amperes
R = 2; // in ohms
Rw = 0.01; // in ohms

//calculation:
PR = I*I*R
Rt = R + Rw
Pw = I*I*Rt

printf("\n\n Result \n\n")
printf("\n (a)the power dissipated in the load = %.0f W", PR)
printf("\n (b)the wattmeter reading. = %.0f W\n",Pw)