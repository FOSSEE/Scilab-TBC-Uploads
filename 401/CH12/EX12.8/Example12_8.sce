//Example 12.8
//Program to estimate:
//(a)Maximum possible link length without repeaters when operating at 35 Mbit/s 
//(b)Maximum possible link length without repeaters when operating at 400 Mbit/s
//(c)Reduction in maximum possible link length considering dispersion-equalization penalty

clear;
clc ;
close ;

//Given data
Pi=-3;                    //dBm - POWER LAUNCHED
alpha_fc=0.4;             //dB/km - CABLE FIBER LOSS 
alpha_j=0.1;              //dB/km - SPLICE LOSS
alpha_cr=2;               //dB - TOTAL CONNECTOR LOSS
Ma=7;                     //dB - REQUIRED SAFETY MARGIN
Dl=1.5;                   //dB - DISPERSION- EQUALIZATION PENALTY

//(a)Maximum possible link length without repeaters when operating at 35 Mbit/s 
Po=-55;                   //dBm - REQUIRED POWER BY APD
//Optical budget: Pi-Po=(alpha_fc+alpha_j)L+alpha_cr+Ma
L1=(Pi-Po-alpha_cr-Ma)/(alpha_fc+alpha_j);
printf("\n\n\t (a)Maximum possible link length without repeaters when operating at 35 Mbit/s is %1.0f km.",L1);

//(b)Maximum possible link length without repeaters when operating at 400 Mbit/s
Po=-44;                   //dBm - REQUIRED POWER BY APD
//Optical budget: Pi-Po=(alpha_fc+alpha_j)L+alpha_cr+Ma
L2=(Pi-Po-alpha_cr-Ma)/(alpha_fc+alpha_j);
printf("\n\n\t (b)Maximum possible link length without repeaters when operating at 400 Mbit/s is %1.0f km.",L2);

//(c)Reduction in maximum possible link length considering dispersion-equalization penalty
//Optical budget considering dispersion-equalization penalty:
//Pi-Po=(alpha_fc+alpha_j)L+alpha_cr+Ma
L3=(Pi-Po-alpha_cr-Dl-Ma)/(alpha_fc+alpha_j);
printf("\n\n\t (c)Reduction in maximum possible link length considering dispersion-equalization penalty is %1.0f km.",L2-L3);