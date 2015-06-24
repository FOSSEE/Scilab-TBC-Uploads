clc;
// page no 120
// prob no 4_2_1
//Resistor at room temp T=290 K with BW=1MHz and R=50 ohm
T=290
BW=1*10^6// Noise bandwidth in hertz
k=1.38*10^-23 //Boltzman constant in J/K
R=50
//Determination of thermal noise power Pn
Pn=k*T*BW;
disp('W',Pn,+'The value of thernal noise power is');
//Determination of RMS noise voltage
En=(4*R*k*T*BW)^(1/2);
disp('uV',En*(10^6),+'The value of RMS noise voltage is');