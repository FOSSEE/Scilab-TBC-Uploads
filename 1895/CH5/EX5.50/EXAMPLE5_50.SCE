//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.50(PAGENO 265)");

//given
f_1 = 200*10^3//frequency applied at first stage 
delta_f1 = 25//frequency deviation at first stage
n1 = 64//frequency multiplication at first stage
n2 = 48//frequency multiplication at second stage
f_LO = 10.8*10^6//frequency of oscillator as shown if block diagram

//calculations
delta_f = delta_f1*n1*n2//maximum frequency deviation
f_2 = n1*f_1//frequency applied at second stage
f_3a = f_2 + f_LO//frequency applied the third stage 
f_3b = f_2 - f_LO//frequency applied the third stage
f_c1 = n2*f_3a//carreir frequency for maximun f_3
f_c2 = n2*f_3b//carreir frequency for minimum f_3

//results
printf("\n\ni.Maximum frequency deviation =%.2f Hz",delta_f);
printf("\n\nii.a.Carrier frequency for maximum f_3 = %.2f Hz",f_c1);
printf("\n\n   b.Carrier frequency for minimum f_3 = %.2f Hz",f_c2);

