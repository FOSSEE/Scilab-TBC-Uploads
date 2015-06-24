//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.11
//calculation of value

//given data
x=25.2;
y=1374;
z=33.3;

//calculation
temp=(x*y)/z
//since x,z has three significant figures and y has four significant figures
//we have to sort the answer with the minimum number of significant figures i.e. 3
//results into temp=1039.7838   we need to consider only 3 significant figures, hence

ntemp=1040

printf('value is %f,considering only 2 significant figures value is %d',temp,ntemp);
