clc
//Chapter3: Modulation
//Example3.29, page no 177
//Given
Pc=100e3//Carrier power
ma=0.5//Depth of modulation
Pt=Pc*(1+((ma^2)/2))//total RF power
mprintf('Total RF power delivered is:Pt= %f kW',Pt/1e3)
