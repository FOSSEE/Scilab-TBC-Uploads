//Example 2.2
clc;
clear;
close;

//Given data :
p1=750;//N/cm^2
p2=1400;//N/cm^2
dvBYV=-0.150;//in %
format('v',9);
dp=p2-p1;//in N/cm^2
dp=dp*10^4;//in N/m^2
K=-dp/(dvBYV/100);//N/m^2
disp(K,"Bulk modulus(N/m^2) : ");
