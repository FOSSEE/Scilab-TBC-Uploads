// elevation that the diameter pump can be situated above the water surface of suction
clc
patm=101e3
pv=1666
g=9800
npsh=7.4
z1=((patm-pv)/g)-npsh
mprintf('\n Z1= %f m',z1)
mprintf('\n the pump must be place at approximately %f m above the suction reservoir of water surface',z1)
