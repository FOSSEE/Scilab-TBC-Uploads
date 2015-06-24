clc
clear
//INPUT DATA
T=100 //tension
l=1.5 //length
m=0.3*10^-6 //mass
//calculation
f=(T/(m/l))^0.5/(2*l)//fundamental frequency produced 
//output
printf("the fundamental frequency produced is %3.3f Hz",f)
