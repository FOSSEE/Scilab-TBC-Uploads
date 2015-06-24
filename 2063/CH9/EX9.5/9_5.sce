clc
clear
//Input data
P1=1;//Initial pressure of a single acting compressor in bar
P2=12;//Final pressure in bar
N=500;//Operating speed of the compressor in rpm
T1=308;//Inlet air temperature in K
n=1.3;//Polytropic index

//Calculations
T2=T1*(P2/P1)^((n-1)/n);//Temperature of air delivered by the compressor in K

//Output
printf('Temperature of air delivered by the compressor is %3.2f K',T2)
