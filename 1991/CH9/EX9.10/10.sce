clc
clear
//input
w=0.004//weight of manganese
a=6*10^23
t=303*24*3600//half time
//calculation
N=w*a/0.054//number of moles
x=0.693*N/(303*24*3600)//count rate from decay law
//output
printf("the count rate is %3.3e counts per second",x)
