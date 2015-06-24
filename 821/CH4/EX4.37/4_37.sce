MW=58.45;//Molar weight of NaCl in grams//
d=2.17;//density of NaCl in g/cc//
MV=MW/d;//Molar volume in cc//
printf('Molar Volume of NaCl=MV=%fcc',MV);
printf('\nThis must contain 6.023*10^23 NaCl units.\nIn one unit cell of NaCl there are 8 corner Na+ ions and 6 on the face centres.\nThe number of Na+ ions in one unit cell is 8*1/8+6*1/2=4.\nThere are 12Cl- ions on the edges,and one in the centre.\nThe number of Cl- ions are 12*1/4+1=4 ');
printf('\nThe volume of the unit cell containing 4 NaCl units=179*10^-24cc');
a=5.63*10^-8;//unit cell length in cm//
printf('\nUnit cell length of NaCl crystal=a=5.63*10^-8cm');
Id=a/2;//Interionic distance in cm//
printf('\nInterionic distance in the crystal=Id=2.815*10^-8cm');
Q=5.9;//glancing angle in degrees//
L=2*Id*sin(Q*%pi/180)*10^8;//wavelenth in angstrums//
printf('\nWavelength of the Xrays used=L=%fAngstrums',L);
