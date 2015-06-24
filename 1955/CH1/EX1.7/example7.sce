clc
clear
//input data
P1=1.01//Input pressure to compressor in bar
T1=305//Input temperature to compressor in K
P2=3//Output pressure from compressor in bar
r=1.4//ratio of specific heats for air
nc=0.75//compressor efficiency

//calculations
T2s=T1*(P2/P1)^((r-1)/r)//Isentropic output temperature from compressor in K
T2=T1+((T2s-T1)/nc)//Actual output temperature from compressor in K
np=((r-1)/r)*((log10(P2/P1))/(log10(T2/T1)))//Infinitesimal efficiency of compressor

//output
printf('The infinitesimal efficiency of the compressor is %3.3f',np)
