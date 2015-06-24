clc
//Chapter3: Modulation, page no 142
//Example3.9
//Given
t=0:0.001:10
//e=500*(1+(0.4*sin(3140*t)))*sin(6.28e7*t)
//a
wc=6.28e7//Carrier angular frequency
fc=wc/(2*%pi)// Carrier freq
//b
wm=3140//Modulating angular freq
fm=wm/(2*%pi)//Modulating freq
//c
Ec=500///peak carrier voltage
Pc=(Ec^2)/(2*600)//Carrier power
//d
Ma=0.4
Pt=Pc*(1+(Ma^2 / 2))//Mean output power
//e
Rl=600//load resistance
Ecp=Ec+(Ma*Ec)//Peak output voltage
Ptm=Ecp^2/(2*Rl)//Peak power
mprintf('Carrier freq is: %d MHz\nModulating freq is:%d Hz\nCarrier power is: %f watts\nMean output power is: %f watts\nPeak output power is: %f watts',round(fc*1e-6),round(fm),Pc,Pt,Ptm)
