//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 19.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


V=132;                                               //Operating Voltage in kV
C=0.2;                                               //Line to Ground Capacitance in microFarad
f=50;                                                //Supply Frequency in Hz
L=1/(3*(2*%pi*f)^(2)*C*10^(-6));                     //Inductance of Coil in H
VA_coil=(132e3/1.732)^(2)/(2*%pi*f*L);               //Rating of Coil in VA
KVA_coil=VA_coil/1e3;                                //To convert VA value into kVA value 

printf("\nThe value of inductance of arc suppressor coil is %.2f H",L);
printf("\nThe KVA rating of coil is %.3e kVA",KVA_coil);









