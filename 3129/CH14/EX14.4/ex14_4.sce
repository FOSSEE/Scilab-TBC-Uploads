//Finding the Performance Parameter of a a Hlfbridge Resonant Inverter
//Example 14.4(Page No-619) 
clc
clear
//given data
L=20*10^-6
C=10^-6
V0=24//in volts
R=0.8//in ohms
Vs=100
w=1/sqrt(L*C)
f=w/(2*%pi)
a=0.25//turns ratio
I0=V0/R

//part(a)
P0=V0*I0//output power
V2=%pi*V0/(2*sqrt(2))
Is=P0/Vs
printf('(a) Avg input currentIs:%2.2f A\n',Is)

//part(b)
Ia=Is
printf('(b) Avg transistor current Ia:%2.2f A\n',Ia)//Ia=Is

//part(c)
Ip=Ia*%pi
printf('(c) peak transistor current:%2.2f A\n',Ip)

//part(d)
Ir=Ip/2
printf('(d) RMS transistor current:%2.2f A\n',Ir)

//part(e)
Voc = Vs
printf('(e) open ckt transistor voltageVoc:%3.2f V\n',Vs)//Vs=Voc

