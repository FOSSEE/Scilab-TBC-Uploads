clear;
clc;
printf("\nEx-6.1\n");
//page no.-178
//given
sigma=6.2*10^-7;......//conductivity of silver in ohm-m

n=5.8*10^28;..........//no. of free electrons per unit volume in m^3

m=9.1*10^-31;.........//mass of electron in kg

e=1.6*10^-19;.........//elementary charge in coulamb

tau=(sigma*m)/(e^2*n).....//relaxation time

printf("\nthe relaxation time is 3.8*10^-14 s\n");

l=2;......//length of silver wire in m
v=40;.....//potential diff. in V

E=v/l.....//electric field in wire in V/m

vd=-(e*E*tau)/m......//drift speed of electron 

printf("\ndrift speed of electron is -0.13 m/s");
