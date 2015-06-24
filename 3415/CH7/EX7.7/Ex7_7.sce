//fiber optic communications by joseph c. palais
//example 7.7
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
Row=0.5//responsivity in A/W
Id=1*10^-9//dark current in A
//to find
P=Id/Row//minimum detectable power in W
mprintf('minimum detectable power =%fnW',P*10^9)//multiplication by 10^9 to convert unit from W to nW
