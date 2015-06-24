clc
//initialisation of variables
s=1.9*10^-5//1/c
t1=15//c
t2=20//c
//CALCULATIONS
g=(1+(s*(t2-t1)))^(0.5)
h=g-1
d=h*24*60*60
//results
printf(' per day difference= % 1f sec',d)
