//Example 4_23
clc;
clear;
close;
format('v',4);
//given data : 
e=1.6*10^-19;//C/electron
Eg=1.21;//eV
ne=3;//electrons/atom
dniBYni=(1.5+Eg/0.052)*(1/ne/100)*100;//% per degree
disp(dniBYni,"100*dni/ni is ( % per degree)");
