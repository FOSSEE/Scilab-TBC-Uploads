//ques-1.21
//Determining type and amount of alkalinity
clc
V=100;//volume of water sample (in mL)
v1=4;//volume of acid required to phenolphthalein end-point (in mL)
v2=16;//volume of acid required to methyl orange end-point (in mL)
N=1/50;//normality of sulphuric acid
P=v1*N*(1000/V)*50;//strength of alkanlinity upto phenolphthalein end-point (in ppm)
M=(v1+v2)*N*(1000/V)*50;//strength of alkanlinity upto methyl orange end-point (in ppm)
//P < M/2
printf("Alkalinity due to Carbonate anions is %.0f ppm and due to Hydrogen carbonate anions is %d ppm.",2*P,M-2*P);
