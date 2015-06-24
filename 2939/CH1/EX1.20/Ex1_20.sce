

//Ex1_20

clc;

//Given:
mh=1.00783;
mn=1.00867;
m35=34.96885; // atomic mass of Cl (35)
m37=36.96590; // atomic mass of Cl (37)

//solution:

B1=(17*mh+18*mn-m35)*931; // in MeV
Bh=B1/m35;
printf("\n The mean binding energy of Cl (35) atom in MeV is = %f ",Bh)

B2=(17*mh+20*mn-m37)*931; // in MeV
Bo=B2/m37;
printf("\n The mean binding energy of Cl (37) atom in MeV is = %f ",Bo)

Bi=Bo-Bh;
printf("\n The increase in mean binding energy of Cl atom in MeV is = %f ",Bi)

// NOTE: The answer depends upon how much precise value you take for atomic masses.
