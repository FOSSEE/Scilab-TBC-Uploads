//Finding the Performance Parameter of a flyback converter 
//Example 14.1(Page No-606) 
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

//part(a)
P0=V0*I0//output power in watts
V2=V0+Vd
V1=V2/a
Vs=V1+Vt
//Ia=Is
Is=(Vd*I0+P0)/(Vs-Vt)
printf('(a) Average input current:%2.2f amperes\n',Is)

//part(b)
Pi=Vs*Is;
eta = P0/Pi;
printf('(b) Efficiency %2.2f %%\n',eta*100);

//part(c)
Ia=Is
printf('(c) Average transistor currentIa:%2.2f A\n',Is)

//part(d)
Ip=(2*Ia)/k//peak transistor current
printf('(d) peak transistor current:%d A\n',Ip)

//part(e)
Ir=sqrt(k/3)*Ip
printf('(e) RMS transistor current:%2.2f A\n',Ir);//for 50% duty cycle

//part(f)
Voc=Vs+V2/a
printf('(f) open ckt tran. voltage:%3.2f V\n',Voc)

//part(g)
f=1*10^-3//hz
Lp=Vs*k/(f*Ip)
printf('(g) Magnetizing inductorLp:%3.2f mH\n',Lp*10^-3)
