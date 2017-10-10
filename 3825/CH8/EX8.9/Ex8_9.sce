clc
P1=0.1 //pressure in MPa
P2=10 //pressure in MPa
T=298
Cp=4.2
beeta=2.07*10^-4
vf=0.0010029
a=(T*vf*beeta)/(Cp*10^3)
mprintf("delT/delP=%E\n",a)//ans vary due to roundoff error
deltaP=P2-P1
deltaT=a*deltaP*10^6
mprintf("deltaT=%fcelsius",deltaT)//ans vary due to roundoff error

