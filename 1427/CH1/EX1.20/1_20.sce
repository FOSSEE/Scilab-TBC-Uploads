//ques-1.20
//Calculate extent of alkalinity
clc
V=100;//volume of water sample (in mL)
N=1/50;//normality of HCl
v1=8;//volume of acid required to phenolphthalein end-point (in mL)
v2=9;//volume of acid required to methyl orange end-point (in mL)
P=v1*N*(1000/V)*50;//strength of alkanlinity upto phenolphthalein end-point (in ppm)
M=v2*N*(1000/V)*50;//strength of alkanlinity upto methyl orange end-point (in ppm)
//P > M/2
printf("Alkalinity due to Carbonate anions is %.0f ppm and due to Hydroxide anions is %d ppm.",2*(M-P),2*P-M);
