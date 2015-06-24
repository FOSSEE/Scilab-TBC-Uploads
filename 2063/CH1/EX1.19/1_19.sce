clc
clear
//Input data
P1=1.5;//Pressure at the 7/8th stroke of compression  in bar
P2=16;//Pressure at the 1/8th stroke of compression  in bar
n=1.4;//Polytropic index
c=8;//Cutoff occurs at 8% of the stroke in percentage

//Calculations
R1=(P2/P1)^(1/n);//Ratio of volumes
R2=(R1-1)/((7/8)-(R1/8));//Ratio of stroke volume to the clearance volume
r=1+R2;//Compression ratio
rho=1+((c/100)*r);//Cut off ratio
na=(1-((1/r^(n-1))*(((rho^n)-1)/(n*(rho-1)))))*100;//Air standard efficiency in percentage

//Output
printf('(a)Compression ratio of the engine is %3.3f\n (b)Air standard efficiency is %3.2f percent',r,na)
