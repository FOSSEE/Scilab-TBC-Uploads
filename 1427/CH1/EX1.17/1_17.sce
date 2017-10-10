//ques-1.17
//Calculating Hardness of solution
clc
m=0.5//mass of CaCO3 eq (in g)
v1=48;//volume of EDTA used for titration (in mL)
v2=15;//volume of EDTA used before boiling (in mL)
v3=10;//volume of EDTA used after boiling (in mL)
V=50;//volume of hard water used (in mL)
//500mL SHW = 500mg of CaCO3 eq
//48mL EDTA = 50mg CaCO3 eq
c=50/48;//CaCO3 eq for 1mL EDTA solution (in mg)
total=v2*c*(1000/V);//total hardness (in ppm)
nc=v3*c*(1000/V);//non-carbonate hardness (in ppm)
c=total-nc;//carbonate hardness (in ppm)
printf("Non-carbonate hardness in given water sample is %.1f ppm and Carbonate hardness is %.1f ppm.",nc,c);
