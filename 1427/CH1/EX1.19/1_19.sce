//ques-1.19
//Calculating Total and Permanent and Temporary hardness
clc
V=50;//volume of water sample (in mL)
v1=15.5;//total hardness volume (in mL)
v2=12.5;//permanent hardness volume (in mL)
v3=40.5;//standard hard water
l=0.5;//lather factor (in mL)
g=0.2;//mass of CaCO3 dissolved (in g/L)

//1L SHW = 200mg CaCO3 eq
//50mL SHW = 20mg CaCO3 eq = (40.5-0.5)mL Soap solution
//1mL soap solution = 0.5mg CaCO3 eq

total=(v1-l)*(1000/V)*0.5;//total hardness (in ppm)
perm=(v2-l)*(1000/V)*0.5;//permanent hardness (in ppm)
temp=total-perm;//temporary hardness (in ppm)
printf("Total hardness of given sample is %d ppm , Permanent hardness is %d ppm and Temporary hardness is %d ppm.",total,perm,temp);
