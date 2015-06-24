clc
clear
r=15;//Compression ratio of a diesel engine
Q=5;//Heat supplied upto 5 percent of the stroke
r1=1.4;//Isentropic ratio

//Calculations
p=1+(Q/100)*(r-1);//Cut off ratio
n=(1-((1/r^(r1-1)*(p^r1-1)/(r1*(p-1)))))*100;//Efficiency of diesel cycle in percent

//Output
printf('Air standard efficiency of the diesel cycle is %3.2f percent',n)
