//Finding temperature coefficient
//Example 2.11(pg. 25)
clc
clear
R25=50,R70=57.2// resistance in ohms
t=25,T=70// temp in degree C
//since Rt=R0(1+(k0*t))
k0=(R70-R25)/[(R25*T)-(R70*t)]
printf('The temp coefficient at 0 degree C is %3.3f',k0 )
