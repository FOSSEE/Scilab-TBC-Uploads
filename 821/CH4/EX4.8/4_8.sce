printf('The volume of 1 mole of H2 at 1 atm and 273.15K=22.415Litres');
printf('\nThe volume at 0.5atm is obtained by considering the constancy of PV');
P1=1;
V1=22.415;
P2=0.5;
V2=(P1*V1)/P2;//Volume at 0.5atm in litres//
printf('\nVolume at 0.5atm of H2 at 273.15K=V2=%fLitres',V2);
MH2=2;//molecular weight of H2//
DH2=MH2/V2;//density of H2 in gram per litre//
printf('\nDensity of H2=DH2=%fgram per litre',DH2);
