//Example 15.7//

prt=24.4*10^-9;//ohm m //room temperature value of restivity
a=0.0034;//C^-1 //temperature coefficient of restivity
t=200;// degree C //tempertaure
tn=20;//degree C //room temperature
p=(prt)*(1+a*(t-tn))
mprintf("p = %e ohm m",p)
s=1/p
mprintf("\ns = %e ohm^-1 m^-1",s)
