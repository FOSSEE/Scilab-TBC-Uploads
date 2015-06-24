//fiber optic communications by joseph c. palais
//example 1.3
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
total_Loss=23// total loss in components in dB
input_power=2e-3// Input power in W
//to find
Input_power_dBm=10*log10(input_power/10^-3)//expressing input power in dBm
output_power_dBm=Input_power_dBm-total_Loss //output power in dBm
output_power=10^(output_power_dBm/10)//output power in mW
mprintf("Value of radiated power=%fdBm",Input_power_dBm)
mprintf("\nOutput power=%fmW",output_power)


