clc;
//page no 762
//prob no. 20.2.4
//refer example 20.2.3
a=2;//gradding profile index
V=69.1;//normalized cutoff freq.
N=2390;//number of modes supported as a step index fiber 
//Determination of no. of modes supported by graded index fiber
N_a=(N*a)/(a+2);
disp(N_a,'no. of modes supported by graded index fiber');