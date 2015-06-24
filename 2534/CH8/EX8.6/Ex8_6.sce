//Ex8_6
clc
hfb = -0.999
hib = 50
hob = 0.82*10^-6
hrb = 4*10^-6
RL = 22*10^3
disp("RL = "+string(RL)+"ohm")//load impedence
//h-parameters for CB transistor amplifier are as follows:
disp("hib = "+string(hib)+"ohm")//input resistance of CB transistor
disp("hrb = "+string(hrb))//voltage gain of CB transistor
disp("hfb = "+string(hfb))//current gain of CB transistor
disp("hob = "+string(hob)+"mho")//output conductance of CB transistor
Av = -(hfb*RL)/((RL*(hib*hob-hfb*hrb))+hib)
disp("Av = -(hfb*RL)/((RL*(hib*hob-hfb*hrb))+hib) = "+string(Av))//voltage gain


//note : answer provided in the textbook is not precised.
