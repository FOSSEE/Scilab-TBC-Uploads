clc
clear
//Input data
rp=5//Pressure ratio
T1=15+273//Inlet temperature in K
nc=80//Adiabatic efficiency of the compressor in percent
n=1.4//Adiabatic index

//Calculations
T2=(T1*rp^((n-1)/n))//Temperature at the outlet of compressor in ideal cycle in K. The textbook answer is wrong. Instead of 456 K, it is given as 452K
T2i=(((nc/100)*T1)+T2-T1)/(nc/100)//Temperature at the outlet of the compressor in the actual cycle in K

//Output
printf('The temperature at the end of compression is %3.0f K',T2i)
