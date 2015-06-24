//Chapter 5, Exmaple 9, page 180
//Calculate corona onset voltage
clc
clear
t = 5*5*8.66 // the three side of the trangle in m
Deq = nthroot(t,3) 
dt = 1 //delta = 1 at standard temperature and pressure
r = 1 //radius of the conductor
En = 27.501 // kVpeak/cm
E0 = 30*dt*(1 + 0.3*sqrt(dt*r))
V0peak = E0*log(Deq*10**2)
V0 = En*log(Deq*10**2)

printf("\n Mean geometric distance between the conductors %f m",Deq)
printf("\n E0 = %f kVpeak/cm",E0)
printf("\n V0peak = %f kVpeak",V0peak)
printf("\n V0 = %f kV",V0)

//Answers may vary due to round off error

