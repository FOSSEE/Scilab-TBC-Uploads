//ques-20.10
//Calculating binding energy of alpha particles
clc
mp=1.00758;//mass of proton (in amu)
mn=1.00897;//mass of neutron (in amu)
M=4.0082;//atomic mass of He (in amu)
dm=2*mp+2*mn-M;//mass defect
BE1=dm*931;//BE (in Mev)
BE2=BE1*10^6*1.6*10^-12;//BE (in ergs)
printf("The binding energy of alpha particles is %.4f Mev or %.6f erg.",BE1,BE2);
