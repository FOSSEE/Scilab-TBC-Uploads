
I1=50  //input current from mains
Po=100D+3  //output of generator on full load in W
V=500  //terminal voltage
I2=Po/V  //load current of generator
Rg=.1  //armature resistance of generator
Rm=.1  //armature resistance of motor
Pi=25D+3  //input power from mains
Pr=(Pi-I2^2*Rg-(I1+I2)^2*Rm)/2  //iron and mechanical losses in each machine
I3=4  //shunt field current of generator
I4=3  //shunt field current of motor
//calculating efficiency of generator
Wt=Pr+V*I3+I2^2*Rg  //total losses
e=Po/(Po+Wt)*100
mprintf("Efficiency of generator=%f percent\n", e)
//calculating efficiency of motor
Pi=V*(I1+I2+I4)  //power input
Wt=Pr+V*I4+(I1+I2)^2*Rm  //total losses
e=(Pi-Wt)/Pi*100
mprintf("Efficiency of motor=%f percent", e)
