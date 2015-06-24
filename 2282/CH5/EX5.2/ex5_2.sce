// Example 5.2, page no-174 
clear
clc

pc=500       //energy of carrier signal
m=0.6       //AM modulation index
//for (a)
pt=pc*(1+(m^2)/2)

//for (b)
pt2=pc*(m^2)/4

printf("(a)\n A3E is the double side band AM with full carrier.\n Therefore, Pt= %.0f W\n\n (b)\n J3E is an SSBSC system.\n Therefore, Pt= %.0f W",pt,pt2)
