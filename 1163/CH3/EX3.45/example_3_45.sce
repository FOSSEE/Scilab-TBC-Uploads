clear;
clc;
disp("--------------Example 3.45---------------")
distance=12000*10^3; // 12000km
propagation_speed=2.4*10^8; // 2.4*10^8 m/s
propagation_time=distance/propagation_speed; //formula for propagation time
propagation_time=propagation_time*10^3; //multiply with conversion factor
// display result
printf("\nThe propagation time is %d ms.\n",propagation_time);
printf("\nThe example shows that a bit can go over the Atlantic Ocean in only %d ms if there is a direct cable between the source and the destination.",propagation_time);
