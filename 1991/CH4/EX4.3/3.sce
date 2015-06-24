clc
clear
//INPUT DATA
f=520 //frequency
t2=293 //air temperature to produce fundamental +273
t1=273// 0deg C
v1=330//speed of sound waves
//calculation
v2=330*(293/273)^0.5 //speed at 20 deg C
l=v2/f//wavelength
len=l/4 - 0.01 //length
//output
printf("the length of tube is %3.3f m",len)
