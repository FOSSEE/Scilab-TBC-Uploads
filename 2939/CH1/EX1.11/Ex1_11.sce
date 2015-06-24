//Ex1_11

clc;

//Given:
mh=1.0078;
mn=1.0087;
ma=4.0026;
mo=15.9949;
Ah=4.0026; // atomic mass of helium
Ao=15.9949; // atomic mass of oxygen

//solution:

// part (a)

B1=(2*mh+2*mn-ma)*931; // in MeV
Bh=B1/Ah;
printf("\n The mean binding energy of helium atom in MeV is = %f ",Bh)

// part (b)

B2=(8*mh+8*mn-mo)*931; // in MeV
Bo=B2/Ao;
printf("\n The mean binding energy of oxygen atom in MeV is = %f ",Bo)
