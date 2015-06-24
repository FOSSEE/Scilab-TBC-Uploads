//Finding resistance and temperature
//Example 2.10(pg. 25)
clc
clear
R15=50,RT=58// resistance in ohms
t=15// te mp in degree C
k0=0.00425// temp coefficient at 0 degree C
R0=R15/[1+(k0*t)]// resistance at 0 degree C in ohms
T=[(RT/R0)-1]/k0// temp in degree C

printf('The value of Resistance at 0 degree C is %3.1f ohms \n',R0)
printf('The value of Temperature at 58 ohm resistance is %3.4f degree C',T)
