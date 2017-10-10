// Exa 17.1

clc;
clear all;

// Given data
// A 5 bit resistive divider

n=5;// since 5 bit resistive divider
Ip1=[1 1 0 1 1];// Digital input 1(1st element of array is MSB)
Ip2=[1 0 1 1 0];//Digital input 2(1st element of array is MSB)
V1=10;// Voltage corresponding to binary 1
V0=0;// Voltage corresponding to binary 0

// Solution

LSB_weight=1/(2^n - 1);
printf('The LSB weight = %.4f \n ',LSB_weight);
LSB2_weight=2^(2-1)/(2^n-1);
printf('The 2nd LSB weight = %.4f \n ',LSB2_weight');
LSB3_weight=2^(3-1)/(2^n-1);
printf('The 3rd LSB weight = %.4f \n ',LSB3_weight');
LSB_op=V1*LSB_weight;// Change in output voltage due to change in LSB
printf('The change in output voltage due to change in LSB = %.4f V \n ',LSB_op);
LSB2_op=V1*LSB2_weight;
printf('THe 2nd LSB causes a change in output voltage of %.4f V \n ',LSB2_op);
LSB3_op=V1*LSB3_weight;
printf('THe 3rd LSB causes a change in output voltage of %.4f V \n ',LSB3_op);
Va=(V1*2^4+V1*2^3+V0*2^2+V1*2^1+V1*2^0)/(2^n-1);// output voltage for digital Ip1
Vb=(V1*2^4+V0*2^3+V1*2^2+V1*2^1+V0*2^0)/(2^n-1);
printf('The output voltage for a digital input 1 and 2 are %.2f V and %.3f V respectively \n ',Va,Vb);
