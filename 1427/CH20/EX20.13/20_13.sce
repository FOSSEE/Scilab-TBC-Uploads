//ques-20.13
//Calculating binding energy per nucleon for Krypton
clc
M=83.9115;//atomic mass of Krypton (in amu)
mp=1.00727;//mass of proton (in amu)
mn=1.008665;//mass of neutron (in amu)
me=0.000548;//mass of electron (in amu)
dm=36*mp+48*mn+36*me-M;//mass defect
BE=(dm*931)/84;
printf("The binding energy per nucleon for Krypton is %.6f Mev.",BE);
