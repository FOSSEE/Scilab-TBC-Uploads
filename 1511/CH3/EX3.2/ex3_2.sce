// Example 3.2 page no-156
clear
clc

vm=110  //rms
x=1020  //Rf+Rl
rl=1000
//(a)
Im=vm*sqrt(2)/x
printf("\n(a)\nIm = %.1f mA",Im*1000)
//(b)
Idc=Im*1000/%pi
printf("\n(b)\nIdc = %.1f mA",Idc)

//(c)
Ir=Im*1000/2
printf("\n(c)\nIrms = %.1f mA",Ir)
//(d)
v=-(Im*rl/%pi)
printf("\n(d)\n Vdc = %.1f V",v)

//(e)
p=Ir*x/1000
printf("\n(e)\nPi = %.2f W",p)
//(f)
rl=1
lr=((vm*sqrt(2)/%pi)-(Idc*rl))/(Idc*rl)
printf("\n(f)\n%% regulation = %.2f %%",lr*100)
