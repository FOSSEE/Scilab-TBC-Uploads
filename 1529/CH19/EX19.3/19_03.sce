//Chapter 19, Problem 3
clc;
Av=120;                     //open-loop voltage gain
Vi=3;                       //input voltage
Vo=24*10^-3;                //output voltage
Ac=Vo/Vi;                    //common mode gain
cmrr=20*log10(Av/Ac);           //CMRR
printf("CMRR = %.2f dB",cmrr);
