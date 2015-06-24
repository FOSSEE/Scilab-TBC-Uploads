clc
clear
//Input data
r=16;//Compression ratio of diesel engine
r1=1.4;//Isentropic ratio

//Calculations
rho1=1+(r-1)*(6/100);//Cutoff ratio at 6% of stroke
rho2=1+(r-1)*(9/100);//Cutoff ratio at 9% of stroke
n1=(1-(1/r^(r1-1))*(1/r1)*(rho1^r1-1)/(rho1-1))*100;//Efficiency of the cycle at 6% of the stroke in percent
n2=(1-(1/r^(r1-1))*(1/r1)*(rho2^r1-1)/(rho2-1))*100;//Efficiency of the cycle at 9% of the stroke in percent
L=n1-n2;//The loss in efficiency in percent

//Output 
printf('The loss in efficiency is %3.2f percent',L)
