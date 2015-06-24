//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.13(PAGENO 220)");

//given
f_m = 1*10^3//modulating frequency
V_m = 2//modulating voltage in volts
deltaf = 6*10^3//frequency deviation
V_m1 = 4//increased modulation voltage for first case
V_m2 = 8//increased modulation voltage for second case

//calculations
k_f = deltaf/V_m//proportion constant
//first case
deltaf1 = k_f*V_m1//frequency deviation for first case
//second case
deltaf2 = k_f*V_m2//frequency deviation for second case

//results
printf("\n\ni.Frequency deviation for modulating voltage 4V = %.2f Hz",deltaf1);
printf("\n\nii.Frequency deviation for modulating voltage 8V = %.2f Hz",deltaf2);
