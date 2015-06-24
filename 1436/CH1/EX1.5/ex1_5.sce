// Example 1.5, page no-54
clear
clc
millivolt_cor=2.585
pot_reading=30.511
corrected_millivolt=pot_reading+millivolt_cor
printf("Temperature correspond to %.3f mV from the table = 600°C",corrected_millivolt)
