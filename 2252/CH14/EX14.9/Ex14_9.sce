
e=.9//efficiency at full load
Pout=500//output at full load
//we get, .9=500/(500+Wi+Wcu)
//efficiency at half load is also the same-->.9=(500/2)/(500/2+Wi+Wcu/4)
//solving for Wi and Wcu at full load
a=[.9 .9;.9 .225]
b=[50;25]
z=inv(a)*b
Wi=z(1,1)
Wcu=z(2,1)
//calculating efficiency at 75% load
Pout=.75*500//output
Wcu1=.75^2*Wcu//copper losses
e=Pout/(Pout+Wi+Wcu1)*100
mprintf("Efficiency at 75 percent full load=%f percent",e)
