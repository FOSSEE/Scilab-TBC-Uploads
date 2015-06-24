//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.17(PAGENO 221)");

//given
V_m = 5//modulating voltage
f_m = 20*10^3//modulating frequency
V_c = 10//carrier voltage
f_c = 100*10^6//carrier frequency
delta_f = 2*10^3//frequeny deviation in hertz per volt

//calculations
m_a = delta_f/f_m//modulation index
printf("\n\nfor m_a = .5 the approximate values of j coefficients are");
printf("\n\nJ_0 = .94   J_1 = .24   J_2 =.03");
J_0 = .94
 J_1 = .24
 J_2 =.03
A_c = V_c*J_0;//carrier amplitude
A_1 = V_c*J_1;//amplitude of first pair of sideband
A_2 = V_c*J_2;//amplitude of second pair of sideband
f_1 = f_c + f_m//maximum frequency of first pair of sideband 
f_1a = f_c - f_m//minimum frequency of first pair of sideband 
f_2 = f_c + (2*f_m)//maximum frequency of second pair of sideband 
f_2a = f_c - (2*f_m)//minimum frequency of second pair of sideband

 //results
printf("\n\ni.Carrier amplitude = %f V",A_c);
printf("\n\nii.Amplitude of first pair of sideband = %f V",A_1);
printf("\n\niii.Amplitude of second pair of sideband = %f V",A_2);
printf("\n\niV.a.Maximum frequency of first pair of sideband  = %f Hz",f_1);
printf("\n\n    .b.Minimum frequency of first pair of sideband = %f Hz",f_1a);
printf("\n\nV.a.Maximum frequency of second pair of sideband = %f Hz",f_2);
printf("\n\n   .b.Minimum frequency of second pair of sideband = %f Hz",f_2a);
