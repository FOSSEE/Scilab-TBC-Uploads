//Chapter 6
//Example 6.3
//Page 145
//autotransformer
clear;clc;

//Given
P = 30e3;
V_lt = 120;
V_ht = 240;

//Calculations
I_1 = P / V_lt;
I_2 = P / V_ht;
V_2 = V_lt + V_ht;
I_in = I_1 + I_2;
input_kva = I_in * V_lt / 1e3;
output_kva = I_2 * V_2 / 1e3;

printf("\n\n Input kVA = %.0f kVA \n\n",input_kva)
printf("\n\n Output kVA = %.0f kVA \n\n",output_kva)