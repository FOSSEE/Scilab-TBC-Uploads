clc
//Chapter3: Modulation
//Example3.30, page no 178
//Given
Pt=100e3// Total power
ma=0.9//Depth of modulation
Pc=Pt/(1+((ma^2)/2))//Carrier power
Psb=Pt-Pc// Intelligence power i.e sideband power
mprintf('Carrier power:%f kW\nThe Intelligence power: %f kW',Pc/1000,Psb/1000)
