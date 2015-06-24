//Chapter1
//Page.No-4, 
//Example_1_1_b, Figure.No-1.2
//Voltage gain of the opamp
//Given:
clear;clc;
Ie1=0.39*10^-3;Ie4=0.298*10^-3;Ie6=0.678*10^-3; // Current in amps
Rc1=6.7*10^3;Rc5=3.8*10^3; // Resistance in ohms
beta_ac=150;
re1=(25*10^-3)/Ie1;
re2=re1;
re4=(25*10^-3)/Ie4;
re5=re4;
re6=(25*10^-3)/Ie6;
k=(Rc1*2*beta_ac*re4)/(Rc1+2*beta_ac*re4);
Ad1=k/re1;
printf("\n Voltage gain of the dual-input,balanced output-differential amplifier is = %.2f  \n",Ad1) // Result
k1=(Rc5*beta_ac*(re6+15*10^3))/(Rc5+beta_ac*(re6+15*10^3));
Ad2=k1/(2*re5);
printf("\n Voltage gain of the dual-input,unbalanced output-differential amplifier is = %.1f  \n",Ad2) // Result
Ad=82.55*22.6; // Using Ad=Ad1*Ad2
printf("\n Overall gain of the op-amp is = %.2f  \n",Ad) // Result
