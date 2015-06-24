clc
clear
//input data
P=1400//Pressure developed by compressor in mm W.G
P1=1.01//Initial pressure of air in bar
T1=305//Initial temperature of air in K
T2=320//Final temperature of air in K
P=1400*9.81*10^-5//Pressure developed by compressor in bar
r=1.4//ratio of specific heats for air

//calculations
P2=P1+P//Final pressure of air in bar
T2s=T1*(P2/P1)^((r-1)/r)//Isentropic temperature at exit in K
nc=((T2s-T1)/(T2-T1))//compressor efficiency
np=((r-1)/r)*((log10(P2/P1))/(log10(T2/T1)))//Infinitesimal stage efficiency

//output
printf('(a)The compressor efficiency is %3.4f\n(b)The infinitesimal stage efficiency is %3.4f',nc,np)
