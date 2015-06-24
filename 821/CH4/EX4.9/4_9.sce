printf('One mole of H2 Occupies 22.415Litres at 273.15K');
printf('\nThe volume at 300K is obtained by considering the constancy of V/T');
T1=273.15;
V1=22.415;
T2=300.15;
V2=(V1/T1)*T2;//Volume at 300K in litres//
printf('\nVolume of 1mole of H2 at 300.15K=V2=%fLitres',V2);
MH2=2;//molecular weight of H2//
DH2=MH2/V2;//density of H2 in gram per litre//
printf('\nDensity of H2=DH2=%fgram per litre',DH2);
