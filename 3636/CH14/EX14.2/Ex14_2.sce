clear;
clc;
Vm=200 //voltage in V
Rf=500 //resistance in series in ohm
Rl=1000 //load resistance in ohm

//Calculation 
Im=Vm/(Rf+Rl) 
Idc=(2*Im)/%pi
Irms=Im/sqrt(2)
Y=sqrt((Irms/Idc)^2-1)

mprintf("(a)Maximum current Im= %0.3f A\n",Im)
mprintf("(b)dc component of current Idc= %1.4f A\n",Idc)
mprintf("(c)rms value of current Irms= %1.3f A\n",Irms)
mprintf("(d)Ripple Factor Y= %1.3f",Y) //The answers vary due to round off error
