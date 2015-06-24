clc
//Chapter3: Modulation
//Example3.6, page no 141
//Given
Pdc=1400//DC power i/p to PA under 100% modulation
Ptdc=400//Plate dissipation
Pd=Ptdc*(2/3)//DC plate dissipation

Pdmod=Ptdc*(1/3)//
Pc=Pdc-Pd//Carrier Power

Psb=Pc/2//side band power
Paf=Psb+Pdmod//output power of modulator

Mod_Eff=0.6
Pdc2=Paf/Mod_Eff//DC i/p power to the modulator
Pd_AF=Pdc2-Paf//Plate dissipation inthe modulator
mprintf('Carrier Power is: %f watts \n DC plate dissipation is: %f watts\n output power of modulator is: %f watts\n Plate dissipation inthe modulator is:%f watts',Pc,Pd,Paf,Pd_AF)
