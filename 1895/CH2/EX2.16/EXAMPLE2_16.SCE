//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.16(PAGENO 109)");

//given
P_ssb  = 10*10^3//power in ssb transmission  in watts
P_t = P_ssb// total power in watts
m_a = .8//modulation index

//calculations
P_c = (P_t/(1+(m_a^2/4)+(m_a^2/4)))//carrier power in watts
P_SB = P_t - P_c//power in sidebands
P_usb =  P_SB/2//power in upper sideband
P_lsb =P_usb//power in upper sideband

//results
printf("\n\ni.Power content of the carrier = %.2f W",P_c);
printf("\n\nii.a.Power content in upper sideband  = %.2f W",P_usb);
printf("\n\n   b.Power content in lower sideband = %.2f W",P_lsb);
