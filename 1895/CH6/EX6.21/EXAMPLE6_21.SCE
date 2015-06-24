//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.21(PAGENO 311)");

//given from the figure
G_1ratio = 1000//gain of master amplifier 
G_2ratio = 100//gain of TWT
G_3ratio = 10000//gain of mixer and IF amplifier
F_2ratio = 4//noise figure of TWT 
F_3ratio = 16//noise figure of mixer and IF amplifier
T_0 =273 + 17//ambident temperature in degree kelvin
T_e1 = 5//temperature of master amplifier in degree kelvin

//calculaitons
F_1 = 1 + (T_e1/T_0);//noise figure of master amplifier
F = F_1 + ((F_2ratio - 1)/(G_1ratio)) + ((F_3ratio - 1)/(G_2ratio*G_1ratio));//Overall noise figure
F_dB = 10*log10(F);//overall noise figure in dB
T_e = (F - 1)*T_0;//overall noise temperature of the receiver 

//results
 printf("\n\ni.Overall noise temperature of the receiver =%.2f degreekelvin",T_e);
 printf("\n\nii.Overall noise figure  = %.6f dB", F_dB);
