//fiber optic communications by joseph c. palais
//example 1.1
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
LP1=-11// Loss in element 1 in dB
LP2=-6// Loss in element 2 in dB
LP3=-3// Loss in element 3 in dB
//to find
total_Loss=LP1+LP2+LP3//total Loss in dB
mprintf("total Loss=%fdB",total_Loss)
input_power=5e-3// input power in Watt
output_power=input_power*10^(total_Loss/10)//output power in Watt
mprintf("\nOutput power=%fmW",output_power*1e3)
