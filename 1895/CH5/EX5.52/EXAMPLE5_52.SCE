//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.52(PAGENO 266)");

//given
delta_f = 50//frequency deviation
delta_f2 = 20*10^3//frequency deviation for sinusoidal FM wave i.e second case
f_m1 = 120//modualting frequency for first case
f_m2 = 240//modulating frquency for second case

//calculations
//first case
delta_f1 = (f_m2/f_m1)*delta_f//frequency deviation for sinusoidal PM wave
n1 = delta_f2/delta_f1//frequency multiplication for sinusoidal PM wave
//second case
n2 = delta_f2/delta_f//frequency multiplication for sinusoidal FM wave

//results
printf("\n\ni.Frequency multiplication for PM wave = %.2f ",n1);
printf("\n\nii.Frequency multiplication for FM wave = %.2f ",n2);
