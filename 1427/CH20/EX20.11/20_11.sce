//ques-20.11
//Calculating binding energy for He
clc
mp=1.007825;//mass of proton (in amu)
me=0.0005852;//mass of electron (in amu)
mn=1.008668;//mass of neutron (in amu)
M=4.0039;//atomic mass of He (in amu)
dm=2*mp+2*mn+2*me-M;//mass defect
BE=dm*931;
printf("The binding energy for He is %.4f Mev.",BE);
