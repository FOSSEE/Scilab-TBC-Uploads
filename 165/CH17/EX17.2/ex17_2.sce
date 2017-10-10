//Example 17.2
close;
clc;
n=5;        //n bit resistive divider
v=10;       //in volts
printf('\nOutput Voltage for the MSB = %.4f \n',v/2)
printf('\nOutput Voltage for 2nd MSB = %.4f \n',v/4)
printf('\nOutput Voltage for 3rd MSB = %.4f \n',v/8)
printf('\nOutput Voltage for 4th MSB = %.4f \n',v/16)
printf('\nOutput Voltage for 5th MSB = %.4f \n',v/32)