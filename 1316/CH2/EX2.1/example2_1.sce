//Chapter 2
//Example 2.1
//Page 55

clear;
clc;

Ri = 10;
TF = 0.020;
Ro = 5;
T = 50;

printf("The unloaded output of sensor is simply ")
//Calculation of Vt
x = TF*T;
printf("Vt = %.1f \n",x)
printf("Since the amplifier has a gain of 10,the output of the amplifier appears to be ")
//Calculation of Vout
y = Ri*x;
printf("Vout = %.0f V \n",y)
printf("But this is wrong because of loading !\n ")
//Correct Analysis
printf("Here we see that  there will be a voltage dropped across the \n output resistance of the sensor.The actual amplifier input voltage will be given by ")
//Calculation of Vin
a = x*(1-((Ro)/(Ro+Ri)));
printf("Vin = %.2f V.\n",a)
printf("Thus the output of amplifier is actually Vout = %.1f V \n",Ri*a)


