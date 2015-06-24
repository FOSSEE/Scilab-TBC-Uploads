clear;
clc;

//Example - 1.1 
//Page number - 6
printf("Example - 1.1 and Page number - 6\n\n");

//(a)
// The pressure in the cylinder is due to the weight of the piston and due to surroundings pressure
m = 50;//[kg] - Mass of piston
A = 0.05;//[m^(2)] - Area of piston
g = 9.81;//[m/s^(2)] - Acceleration due to gravity
Po = 101325;//[N/m^(2)] - Atmospheric pressure
P = (m*g/A)+Po;//[N/m^(2)]
P = P/100000;//[bar]
printf(" (a).Pressure = %f bar\n",P);

//(b)
printf(" (b).Since the piston weight and surroundings pressure are the same,the gas pressure in the piston-cylinder assembly remains %f bar",P);



