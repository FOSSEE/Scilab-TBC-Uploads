
//example 1-2 in page 8
clc;
//given data
body_temp=98.6;//human body temperature is 98.6 degree fahrenheit
//calculations
cel_temp=(body_temp-32)/1.8;//temperature in celsius
kel_temp=cel_temp+273.15;// temperature in kelvin
printf("celsius temperature=%.0f degree celsius \n",cel_temp);
printf("kelvin temperature=%.2f K",kel_temp);
//result
//the celsius temperature=37 degree celsius
//the kelvin temperature=310.15 K