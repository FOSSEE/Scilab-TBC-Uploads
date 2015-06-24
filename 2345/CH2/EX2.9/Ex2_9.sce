//Finding resistivity and temp coefficient
//Example 2.9(pg. 24)
clc
clear
k20=1/254.5// temperature coefficient at 20 degreeC
p0=1.6*(10^-6)// resistivity at 0 degree C in ohm-cm
t=20,T=50//temp in degree C
k0=k20/(1-(t*k20))//temperature coefficient at 0 degreeC
p50=p0*[1+(T*k0)]// resistivity at 50 degree C in ohm-cm
k50=1/[T+(1/k0)]//temperature coefficient at 50 degreeC
printf('Thus the temperature coefficient at 50 degree C is %3.4f \n',k0)
printf('Thus the resistivity at 50 degree C is %e in ohm-cm',p50)
