//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 3.5
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

kVpry=220;                                     //Primary voltage of Transformer in kV
kVsec=400;                                     //Secondary voltage of Transformer in kV
MVAb=240;                                      //Apparent Base power in Transformer in MVA
Zpry=3+%i*8;                                   //Primary Impedance of Transformer in Ohm
Zsec=5+%i*10;                                  //Secondary Impedance of Transformer in Ohm
Zlv=(Zpry)+(Zsec)*(kVpry/kVsec)^2;             //Impedance referred to LV side in Ohm
Zlvpu=(Zlv)*(MVAb/(kVpry)^2);                  //Per unit impedance referred to LV side in p.u. Ohm
Zhv=(Zsec)+(Zpry)*(kVsec/kVpry)^2;             //Impedance referred to HV side in Ohm
Zhvpu=(Zhv)*(MVAb/(kVsec)^2);                  //Per unit impedance referred to HV side in p.u. Ohm


printf("\nPer unit impedance referred to the L.V side is %.6f + j%.6f",real (Zlvpu),imag (Zlvpu));
printf("\nPer unit impedance referred to the H.V side is %.6f + j%.6f",real (Zhvpu),imag (Zhvpu));
