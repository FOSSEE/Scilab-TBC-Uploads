
//shunt generator was run as a shunt motor at no load
I0=5  //current drawn
Ish=1.5  //shunt field current
Ia0=I0-Ish
Ra=.15  //armature circuit resistance
V=440  //terminal voltage
Wcu=Ia0^2*Ra  //armature copper loss
Pi=V*I0  //power input
Wc=Pi-Wcu  //constant losses
//calculating efficiency of shunt generator at full load
Po=50D+3  //output of generator
Il=Po/V  //load current
Ia=Il+Ish
Wcu=Ia^2*Ra //copper losses
Wt=Wc+Wcu  //total losses
e=Po/(Po+Wt)*100
mprintf("Efficiency of shunt generator at full load=%f percent\n", e)
//calculating efficiency at 3/4th load
I1=3/4*Il  //load current
Ia=I1+Ish
Wcu=Ia^2*Ra  //copper losses
Wt=Wc+Wcu  //total losses
e=(3/4*Po)/(3/4*Po+Wt)*100
mprintf("Efficiency at 3/4th load=%f percent\n", e)
//calculating efficiency at half load
I2=.5*Il  //load current
Ia=I2+Ish
Wcu=Ia^2*.15  //copper losses
Wt=Wc+Wcu  //total losses
e=(.5*Po)/(.5*Po+Wt)*100
mprintf("Efficiency at half load=%f percent", e)
