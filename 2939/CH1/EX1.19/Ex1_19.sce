
//Ex1_19

clc;

//Given:
mh=1.007825;
mn=1.008665;
mt=3.016049; // atomic mass of Tritium
mNi=59.93528; // atomic mass of Nickel

//solution:

// part (a)

B1=(1*mh+2*mn-mt)*931; // in MeV
Bh=B1/mt;
printf("\n The mean binding energy of tritium atom in MeV is = %f ",Bh)

// part (b)

B2=(28*mh+32*mn-mNi)*931; // in MeV
Bo=B2/mNi;
printf("\n The mean binding energy of nickel atom in MeV is = %f ",Bo)
