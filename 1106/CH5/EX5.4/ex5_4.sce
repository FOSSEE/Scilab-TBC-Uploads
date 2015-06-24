// Example 5.4, Page No-251
clear
clc

Vref=1.5

// Part A
Vpp=5
Vnp=2.5
Vc=Vnp + Vref
printf('\nCapacitor voltage Vc= %.1f V', Vc) 

// Part B
Vopeak=Vnp + Vref +Vpp
printf('\nPeak value of clamped output voltage Vo(peak)= %.1f V', Vopeak)

// Part C
Voc=0.7 + Vref
printf('\nOp-amp output voltage during charging Vo= %.1f V', Voc) 

// Part D
Vd=Vref-Vopeak
printf('\nMaximum differential input voltage Vd= %.1f V', Vd) 
