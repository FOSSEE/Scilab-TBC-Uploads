clc
//Chapter3: Modulation
//Example3.8, page no 143
//Given
Po=3000// Rating of Power Amplifier
Pr=750//Push-Pull amplifier rated as
Paf=2*Pr//Rated power output from Push-Pull modulator
Eff=0.6
P_lost=Paf-(Eff*Paf)//Modulation power lost
Psb=Paf-P_lost//side band power

Pc=Po-Psb//Carrier power
Ma=sqrt(2*Psb/Pc)*100//Maximum depth of modulation
mprintf('Carrier power is: %d watts\n Maximum depth of modulation is: %f',Pc,Ma)
