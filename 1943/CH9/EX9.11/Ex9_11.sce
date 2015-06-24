
clc
clear
//Input data
P=1;//The operating power of a reactor in W
K=1.0015;//The effective multiplication factor of Reactor becomes suppercritical 
t=0.0001;//The average neutron life in s
t1=1.0001;//Neutron life time in s

//Calculations 
d=(K-1)/K;//The reactivity 
Z=(d*P)/t;//The number of neutrons
n=exp(Z)/10^6;//Neutron density * 10^6

//Output
printf('The reactor power level at the end of 1s is %3.3f MW',n)
