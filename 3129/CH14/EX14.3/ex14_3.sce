//Finding the Performance Parameter of a pushpull converter 
//Example 14.3(Page No-612) 
clc
clear
//given data 
a=0.25//turns ratio
V0=24//in volts
R=0.8//in ohms
Vt=1.2//VOLTAGE DROP OF TRANSISTOR IN VOLTS
Vd=0.7//VOLTAGE DROP OF DIODES IN VOLTS
k=0.5
I0=V0/R

//part (a)
P0=V0*I0//output power in watts
V2=V0+Vd
V1=V2/a
Vs=V1+Vt
//Ia=0.5*Is
Is=(Vd*I0+P0)/(Vs-Vt)
printf('(a) Average input current:%2.2f amperes\n',Is)

//part(b)
Pi=Vs*Is
eta = P0/Pi
printf('(b) Efficiency: %.2f %%\n',eta*100)

//part(c)
Ia=0.5*Is
printf('(c) average transistor currentIa:%2.2f A\n',Ia)

//part(d)
printf('(d) Peak transistor currenIp:%2.2f A\n',Is)//Ip=Is

//part(e)
Ip=Is
Ir=sqrt(k)*Ip
printf('(e) RMS transisitor current:%2.2f A\n',Ir)//for 50%duty cycle

//part(f)
Voc=2*Vs
printf('(f) open ckt transistor voltage:%d V\n',Voc)
