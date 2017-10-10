clc;
N=500; // number of turns in central limb
ac=600*10^-6; // cross sectional area of central limb
ao=375*10^-6; // cross sectional area of outer limb
f=0.9*10^-3; // required flux in Weber
lg=0.8*10^-3; // length of air gap
lc=180*10^-3; // length of central limb
lo=400*10^-3; // length of outer limb
uo=4*%pi*10^-7; // free space permeability
Bg=f/ac; // air gap flux density
Hg=Bg/uo; // magnetic field intensity in air gap
mg=Hg*lg; // mmf required for air gap
// from fig A.7,for B=1.5T, H for cast steel is 3000Ats/m
H=3000; // magnetic field intensity for cast steel
mc=H*lc; // mmf in central limb
Bo=f/(2*ao); // flux density in each outer limb
// for B=1.2, H=1400
H=1400; // magnetic field intensity for cast steel for given flux density
mo=H*lo; // mmf for outer limb
// By KVL 
I=(mg+mo+mc)/N;
printf('The exciting current required to establish the desired flux is %f A',I);
