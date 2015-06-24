clc
clear
//Input data
T1=300;//Temperature at the beggining of compression stroke in K
T2=873;//Temperature at the end of compression stroke in K
T3=2173;//Temperature at the beggining of expansion stroke in K
T4=1123;//Temperature at the end of expansion stroke in K
r1=1.4;//Isentropic ratio

//Calculations
r=(T2/T1)^(1/(r1-1));//Compression ratio
rho=T3/T2;//Cut off ratio
n=(1-((1/r1)*((T4-T1)/(T3-T2))))*100;//Efficiency of diesel cycle in percent

//Output data
printf('(a)Compression ratio is %3.2f \n (b)Cut off ratio is %3.2f \n (c)Ideal efficiency of the diesel cycle is %3.2f percent',r,rho,n)
