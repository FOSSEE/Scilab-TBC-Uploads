clc
//Chapter3: Modulation
//Example3.5b, page no 139
//Given
Pd=944//Anode dissipation of the class C amplifier in watts
Ma=0.6//modulation depth,
Etta=0.6//efficiency
Pout=(Etta*Pd/(1-Etta))//power dissipation at 60% modulation
Pc=Pout/(1+(Ma^2/2))//Tx power
Psb=Pout-Pc
Pdc1=Pc/Etta//DC power inputto PA
Paf=Psb/Etta// modulation power input to PA
Eff=0.25// efficiency of the modulator
Pdc2=Paf/Eff//DC power input to modulator
Pdct=Pdc1+Pdc2//Total DC power to the system
Effo=Pout/Pdct//Overall Efficiency
Ma=1// 100% modulation
Pt=Pc*(1+(Ma^2)/2)
Psb=(Pc*Ma^2)/2
Paf=Psb/Etta//modulating input power to PA
Pdc2=Paf/Eff// DC power input to modulator
Pd=Pdc2-Paf//Power dissipation at the modulator
Effo1=Pout/(Pdc1+Pdc2)//Overall Efficiency
mprintf('Tx power:%f Watts\n Power dissipation at the modulator is: %f Watts\n Overall Efficiency at0.6 modulation is:%f%c ',Pc,Pd,100*Effo,'%')
