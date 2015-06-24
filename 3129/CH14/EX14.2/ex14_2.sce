//Finding the Performance Parameter of a forward converter
//Example 14.2(Page No-611) 
clc
clear
//given data
V0=24//in volts
R=0.8//in ohms
I0=V0/R//in amperes
Vd=0.7//voltage drop across diodes
Vs=12//in volts
Vt=1.2//in volts
k=0.4
f=1000//Hz

//part (a)
P0=V0*I0//o/p power in watts
V2=V0+Vd
V1=Vs-Vt
a=V2/V1
Is=(Vd*I0+P0)/(Vs-Vt*k-Vd*(1-k))
printf('(a) Average input current Is:%2.2f A\n',Is)

//part b
Pi=Vs*Is//i/p power
n=P0/Pi
printf('(b) Efficiency n:%2.2f %%\n',n*100)

//part(c)
Ia=k*Is
printf('(c) The average transistor currentIa:%2.2f A\n',Ia)

//part(d)
Ip=Is
de_Ip=0.05*Is//peak to peak ripple current is 5%of avg dc i/p
printf('(d) peak transistor currentIp:%2.3f A\n',de_Ip)

//part(e)
Ir=sqrt(k)*sqrt(Ip^2+de_Ip/3+Ip*de_Ip)
printf('(e) RMS transistor current:%2.2f A\n',Ir)

//part(f)
Voc=Vs+V2/a
printf('(f) Open circuit transistor voltageVoc:%2.2f V\n',Voc)

//part (g)
de_IL1=0.04*I0//peak to peak ripple current is 5%of avg value
de_V0=0.03*V0//ripple content of output voltage is 3%
L=de_V0*k/(f*de_IL1)
Lp=L*10^3
printf('(g) primary magnetizing inductor Lp:%5.3f mH\n',Lp)

//part(h)
Lo=(Vs-Vt)*k/(f*(de_Ip-a*de_IL1))
L1=Lo*10^3
printf('(h) Output inductance for maintaining P-P ripple currentL1:%2.2f mH\n',L1)
