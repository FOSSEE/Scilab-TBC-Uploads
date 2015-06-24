clear;
clc;
//Example 15.7
Vs=2;
Vh=15;
Vl=-15;
//hysteresis width=x
x=60*0.001;//(V)
//Vth-Vtl=(R1/(R1+R2))*(Vh-Vl)
//R2/R=y
y=(Vh-Vl)/x-1;
printf('\nR2/R1=%.2f \n',y)
Vref=(1+1/y)*Vs;
printf('\nreference voltage=%.4f V\n',Vref)
