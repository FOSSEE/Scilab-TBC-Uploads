// Example 2.7, page no-75
clear
clc

cmrra=1000
cmrrb=10000
v1a=100*10^-6
v2a=-100*10^-6
v1b=1100*10^-6
v2b=900*10^-6

// for first set
vida=v1a-v2a
vcma=(v1a+v2a)/2
vic=0
voa=vida*(1+vic/(cmrra*vida))
voa=voa*10^6
printf("Vo for first set= %.1f uV", voa)

// for second set
vidb=v1b-v2b
vic=(v1b+v2b)/2
vob=vidb*(1+vic/(cmrrb*vidb))
vob=vob*10^6
printf("\nVo for second set= %.1f uV", vob)
// answer in textbook is wrong
