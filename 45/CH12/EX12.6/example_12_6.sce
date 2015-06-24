//Example 12.6
clc;
clear;
I=10/(3*10^3);
printf("Current each input digital voltage must be capable of supplying is =%f mA\n",I*1000)
ful_scale_voltage = 0 ;
for i=1:5 
    op_v(1,i)= 10/2^i;
    ful_scale_voltage = ful_scale_voltage + op_v(1,i);
end
V_A=ful_scale_voltage * (2*1000)/(1000+(2*1000));
printf("\n Output voltage Va = %f V",V_A);
 