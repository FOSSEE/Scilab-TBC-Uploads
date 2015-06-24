ERPmax1dB=6
ERPmax2dB=-2
DiffdB=ERPmax1dB-ERPmax2dB
Diff=10^(DiffdB/10)
Rfree=5*(Diff)^(1/2)//free space-case(a)
Rtypc=5*(Diff)^(1/4)//signal attenuation is proportional to 4th power-case(b)
disp(Rfree,'maximum communication range in km in a free space propogation condition-case(a)')
disp(Rtypc,'maximum communication range in km when signal attenuation is proportional to 4th power-case(b)')
