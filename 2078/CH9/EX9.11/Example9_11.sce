//Exa 9.11
clc;
clear;
close;
//Given data :
v2byv1=25/23.25;//ratio(By Kirchoff law)
v3byv1=1.65/1.1625;//ratio(By Kirchoff law)
Vbyv1=1+v2byv1+v3byv1;//ratio(Final voltage between line conductor & earth)
v1byV=1/Vbyv1;//ratio
v2byV=v2byv1*v1byV;//ratio
v3byV=v3byv1*v1byV;//ratio
eff=1/3/v3byV*100;//string efficiency in %(V/3/v3)
disp(eff,"String efficiency in % is ");
