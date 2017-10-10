//Example no B.2
//To compute noise figure of mobile receiver system
//Page no. 613

clc;
clear all;

//Given data
F1=3;                                       //Coaxial cable loss in dB
F1=10^(F1/10);                              //Coaxial cable loss
F2=6;                                       //Noise figure of phone in dB
F2=10^(F2/10);                              //Noise figure of phone

Fsys=F1+((F2-1)/0.5);                       //Noise figure of mobile receiver system
Fsys=10*log10(Fsys);                        //Noise figure of mobile receiver system in dB

// Displaying the result in command window
printf('\n Noise figure of mobile receiver system = %0.0f dB',Fsys);
