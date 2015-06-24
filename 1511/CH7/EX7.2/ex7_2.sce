// Example 7.2 page no-403
clear
clc

Av=-100
Avd=-50
Avnew=-200
B=0.01
Avdnew=Avnew/(1-B*Avnew)
avchange=(-Avdnew)-(-Avd)
var=avchange*100/(-Avd)
printf("Variation = %.1f%%",var)
