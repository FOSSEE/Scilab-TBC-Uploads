clc
clear
//input
ep=150*10^3 //electric energy to primary
e=0.69 //efficieny
t=70 //time
//calculation
es=e*ep//transformer equation
ps=es/t//power
//output
printf("the power output is %3.3e W",ps)
