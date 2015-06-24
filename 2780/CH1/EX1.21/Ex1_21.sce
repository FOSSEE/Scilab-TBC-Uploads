clc
//to calculate work to be done 
E=0.5*10^6 //rest energy of electron (MeV) E=m0*c^2
v1=0.6*3*10^8 //speed of electron in (m/s)
v2=0.8*3*10^8
c=3*10^8 //speed of light in (m/s)
K1=E*((1/sqrt(1-v1^2/c^2))-1) //kinetic energy in (eV)
K2=E*((1/sqrt(1-v2^2/c^2))-1)
w=(K2-K1)*1.6*10^-19
disp("amount of work to be done is w="+string(w)+"J")


