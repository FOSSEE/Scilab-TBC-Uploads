clear;
clc;
//Example 3.2
b=100;//common emitter current gain
BVcbo=120;//(V) break down voltage of the B-C junction
n=3;//empirical constant
BVceo=BVcbo/(b)^(1/n);
printf('\nbreakdown voltage=%.2f V\n',BVceo)
