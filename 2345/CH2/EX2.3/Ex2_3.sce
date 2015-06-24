//Finding temperature
//Example 2.3(pg. 22)
clc
clear
t=15//degree C
R15=250,RT=300//ohms
k0=0.0038//ohm/degree C
k1=k0/(1+(k0*t))
T=[{(RT/R15)-1}/k1]+t//since RT=R15{1+k1*(T-t)}
printf('The value of Temperature at 300 ohm resistance is %3.1f degree C',T)
