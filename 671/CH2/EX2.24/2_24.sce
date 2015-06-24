V=32
I=1
R1=20
R2=8
R3=2
Voc1=V/(R1+R2+R3)*(R2+R3)  ///a,b open
Isc1=V/R1       ///a,b short

Voc2=I*R2/(R1+R2+R3)*R1
Isc2=I*R2/(R2+R3)

////by superposition
Voc=Voc1+Voc2
Isc=Isc1+Isc2

disp(Voc)
disp(Isc)
