
clear
clc

//Example 21.4
disp('Example 21.4')

xbar=199.5;//Note that this is the correct value and not 199
sbar=8.83;
USL=235;//Note that this is diff from UCL
LSL=185;
c4=0.8862;
n=3;
sigma=5.75;
sigma_x=sbar/c4/sqrt(n);

mprintf('\nValue of sigma_x=%f',sigma_x);

Cp=(USL-LSL)/6/sigma;
Cpk=min(xbar-LSL,USL-xbar)/3/sigma;

mprintf('\nCp=%f and Cpk=%f',Cp,Cpk)
