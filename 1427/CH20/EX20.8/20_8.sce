//ques-20.8
//Calculating binding energy per nucleon of Ca
clc
M=39.975;//atomic mass of Ca (in amu)
mp=1.0078;//mass of proton (in amu)
mn=1.0086;//mass of neutron (in amu)
dm=20*mp+20*mn-M;
BE=(dm*931)/40;
printf("The binding energy per nucleon for Ca is %.3f Mev.",BE);
