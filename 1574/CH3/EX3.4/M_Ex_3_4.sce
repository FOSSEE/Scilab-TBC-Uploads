clc
//Chapter3: Modulation
//Example3.4, page no 138
//Given
Ebb=2e3//DC plate supply
Ecc=-500//DC grid bias
Ib=67e-3//DC plate current
Ic=30e-3//DC grid current
Egm=750//RF peak grid voltage
Pout=75//RF Power output
Ma=0.75//Depth of modulation
Paf=(Ma^2*Ebb*Ib)/(2*1)//modulating power required from the audio source
Pdc=Ebb*Ib//Power supplied by DC source
Zm=Ebb^2/Pdc//Modulator Impedance

Pd=Pdc+Paf-Pout//Plate dissipation
mprintf('modulating power required from the audio source\n is:%f watts\n Modulator Impedance is:%f ohm\n Plate dissipation is:%f watts',Paf,Zm,Pd)
