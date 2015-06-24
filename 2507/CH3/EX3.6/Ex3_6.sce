clc
clear
printf("Example 3.6 | Page number 80 \n\n");
//What will be thermometer read in place where gas thermometer reads 50°C
deff('y = e(t)',['y = 0.0367*t + 1.33 * 10^(-4)*t^2'])

printf("Thermometer read in place where gas thermometer reads 50°C = %.2f °C",e(50)/(e(100)/100))
