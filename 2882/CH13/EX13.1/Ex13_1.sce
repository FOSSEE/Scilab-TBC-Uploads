//Tested on Windows 7 Ultimate 32-bit
//Chapter 13 Integrated Circuit Pg no. 414
clear;
clc;

//Given

R_a=0.5D3;//diffused resistor value in ohms
R_b=10D3;//diffused resistor value in ohms
Rs_n=10;//n-type emitter diffusion sheet resistance in ohms
Rs_p=250;//p-type emitter diffusion sheet resistance in ohms

//Solution

disp("(a)");
L_to_W_a=R_a/Rs_n;//length to width ratio of resistor
printf(" Thus a %d ohm resistor of n-type emitter diffusion,\n can be fabricated by using a pattern of\n ",R_a);
printf("%d mils long by 1 mil wide",L_to_W_a);

disp("(b)");
L_to_W_b=R_b/Rs_p;//length to width ratio of resistor
printf(" Thus a %d kilo-ohm resistor of p-type emitter diffusion,\n can be fabricated by using a pattern of\n ",R_b/10^3);
printf("%d mils long by 1 mil wide",L_to_W_b);
