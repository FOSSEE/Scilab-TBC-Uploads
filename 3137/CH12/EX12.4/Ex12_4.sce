//Initilization of variables
v_o=0 //ft/s
v_f=88//ft/s
t=28 //s
//Calculations
k=(v_f-v_o)/t //ft/s^2
s=((v_f-v_o)/2)*t //ft
//Result
clc
printf('The constant k is %f and displacement is %f ft',k,s)
//Decimal accuracy causes discrepancy in answers
