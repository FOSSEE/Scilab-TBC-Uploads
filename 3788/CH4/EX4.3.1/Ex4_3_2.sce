//Example 4.3.2
// Calculate the New System noise temperature

//Variables
clc
clear
Gain = 50
G1 = 0.631
attenuation = 2
Tm = 500
TIF = 1000
Tp = 300

//Calculation
Twg = Tp*(1-G1)
Tin = G1*25
T = (Tin + Twg +Gain + (Tm/(10^5)) + (TIF/(10^4)))
Ts = (T/G1)

//Result
printf("Waveguide Noise temperature is %fK \n",Twg)
printf("The new System noise temperature is %fK",Ts)
