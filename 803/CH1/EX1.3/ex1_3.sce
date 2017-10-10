clc
fk=2.5; //Desired resolution between frequencies
fd=1.75*10^3;//maximum frequency
dmin=1/fk;//minimum record length
tmax=1/(2*fd);//maximum time between sampling
N=1/(tmax*fk);//minimum number of sampling points
disp("Seconds",dmin,"Minimum record length");
disp("Seconds",tmax,"Maximum time betweeen sampling points");
disp(N/2,"Minimum number of sampling points");