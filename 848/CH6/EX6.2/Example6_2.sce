//clear//
//Caption: Calculation of Quantum efficiency
//Example6.2
//page 226
clear;
clc;
close;
Ip_q = 5.4*(10^6);//electron-hole pairs generated
Pin_hv = 6*(10^6);//number of incident photons
etta = Ip_q/Pin_hv;
disp(etta,'Quantum efficiency =')
disp(etta*100,'Quantum efficiency in percentage =')
//Result
//Quantum efficiency = 0.9  
//Quantum efficiency in percentage =  90.  
