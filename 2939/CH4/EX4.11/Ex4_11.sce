
// Ex4_11
clc;

// Given:
Ma=4;//mass of alpha particle
Mr=228;// mass of Th
Ea=4; //in MeV


// Solution:
Er=(Ma/Mr)*Ea;// energy of recoil
Et=Ea+Er;// total energy of transition

dM=Et/931;// net mass loss in u

printf("The net mass loss is = %f u",dM)
