clc
//Chapter3: Modulation
//Example3.7, page no 141
//Given
Paf=500//Modulator output power
Eff=0.75//Efficiency of the amplifier
P_lost=Paf*(1-Eff)//modulating power lost in the amplifier
Psb=Paf*Eff//side band power

m=1
Pc=2*Psb

Pt=Pc+Psb//Total RF power
mprintf('Maximum carrier power is: %d watts\n Total RF power is: %d watts',Pc,Pt)
