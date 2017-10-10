//ques-20.12
//Calculating mass defect and binding energy per nucleon for sodium atom
clc
mh=1.008;//mass of hydrogen (in amu)
mn=1.0072;//mass of neutron (in amu)
M=23.0092;//atomic mass of sodium (in amu)
dm=11*mh+12*mn-M;//mass defect
BE=(dm*931)/23;
printf("The mass defect is %.4f amu binding energy per nucleon for Sodium atom is %.3f Mev.",dm,BE);
