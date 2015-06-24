//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.20(PAGENO 311)");

//given
F_2 = 20//noise figure of receiver in dB
G_1 = 40//gain of low noise amplifier in dB
T_e1 = 80//noise temperature of low noise amplifier in degree kelvin
T_0 = 300//room temperature

//calculations
F_2ratio = exp((F_2/10)*log(10));//noise figure of receiver in ratio 
G_1ratio = exp((G_1/10)*log(10));//gain of  low noise amplifier
T_e2 = (F_2ratio-1)*T_0//noise temperature of the receiver in degree kelvin
T_e = T_e1 +(T_e2/G_1ratio)//overall noise temperature in degree kelvin

//results
printf("\n\ni.Noise Temperature of the receiver = %.2f degkelvin ",T_e2);
printf("\n\nii.Overall noise temperature = %.2f degkelvin",T_e);
