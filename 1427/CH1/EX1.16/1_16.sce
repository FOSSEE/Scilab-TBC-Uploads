//ques-1.16
//Calculating degree of Total and Permanent and Temporary Hardness
clc
V=50;//volume of water sample (in mL)
v1=15;//volume of EDTA used before boiling (in mL)
v2=5;//volume of EDTA used after boiling (in mL)
M=0.01;//Molarity of EDTA
total=v1*M*(1000/V)*50*2;//Total hardness (in ppm)
perm=v2*M*(1000/V)*50*2;//Permanent hardness (in ppm)
temp=total-perm;//Temporary hardness (in ppm)
printf("Total hardness is %d ppm, Permanent hardness is %d ppm and Temporary hardness is %d ppm.",total,perm,temp);
