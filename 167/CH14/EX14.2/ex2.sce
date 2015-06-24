//example 2
// fogging of the windows in house 
clear
clc
x=0.75 //relative humidity
P=2.3392 //saturation pressure of water at 20°C in kPa
Pv=x*P //Vapour pressure in kPa
disp('Saturation temp. of water at Pv=15.4 C.Therefore, ')
Tdp=15.4 //window temperature in Celsius
printf("\n Hence, window temperature at which moisture in the air start condensing on the inner surfaces of the windows is = %.1f C. \n",Tdp);