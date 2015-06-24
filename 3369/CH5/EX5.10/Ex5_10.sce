//Chapter 5, Exmaple 10, page 180
//Calculate corona power loss
clc
clear
p = 75 // pressure
t = 35 // temprature
m1 = 0.92
m2 = 0.95
t = 5*5*8.66 // the three side of the trangle in m
Deq = nthroot(t,3) 
dt = (3.92*p)/(273+t) //Relative air density
E0 = 30*dt*(1 + 0.3*sqrt(dt))*m1*m2
En = 27.501 // kVpeak/cm
Vph = (275*10^3)/sqrt(3)
V0peak = E0*log(Deq*10**2)
V0 = En*log(Deq*10**2)
V0ratio = 275/V0
printf("\n Reative air density %f ",dt)
printf("\n Corona onset field = %f kVpeak/cm",E0)
printf("\n V0peak = %f kVpeak",V0peak)
printf("\n V0 = %f kV",V0)
printf("\n Ration of V0 = %f ",V0ratio)
K = 0.05 // K factor
Pc = (3.73*K*50*Vph^2)/(Deq*10**2)^2
Cc = Pc*10^3/Vph
printf("\n Corona power loss Pc = %f kW/km",Pc*10**-5)
printf("\n Corona current = %f mA/Km",Cc*10^-2)

//Answer vary due to round off error
//Some of the answers provided in the textbook are wrong
