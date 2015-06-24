//finding temperature
//Example 2.13(pg. 26)
clc
clear
RT=144,R20=10// in ohms
t=20// in degree C
k20=5*(10^-3)//temp coefficient at 20 degree C
T={[(RT/R20)-1]/k20}+t
printf('The value of temp required for tungsten bulb is %4.2f degree C',T)
