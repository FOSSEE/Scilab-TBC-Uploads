clc;
N=400; // number of turns in coil
ac=20*10^-4; // area of cemntral limb
ao=15*10^-4; // area of outer iimb
lg=1*10^-3; // length of air gap
lc=40*10^-2; // length of central limb
lo=60*10^-2; // length of each outer limb
f=0.9*10^-3; // required flux
uo=4*%pi*10^-7; // free space permeability
Bg=f/ao; // air gap flux density
mg=(Bg*lg)/uo; // mmf or air gap
// for B=0.6,H=575 AT/m from fig A.7
H=575; // magnetic flux intensity for given flux density
mo=H*lo; // mmf of outer limb which contain air gap
mt=mo+mg; // combined mmf of air gap and outer limb
// this mmf acts across the other outer limb
haeb=mt/lo; // magnetic field intensity in outer limb which does not contain air gap
// for H=1370.77, B=1.19 T from fig A.7
Bo=1.19; // flux density for given magnetic field intensity
faeb=Bo*ao; // flux in outer limb
fnet=f+faeb; // net flux through central limb
Bc=fnet/ac; // flux density in central limb
// from fig A.7
H=1900; //  magnetic field intensity for given flux density
mc=H*lc; // mmf in central limb
// by KVL in one of the loop
I=(mc+mt)/N; 
printf('Exciting current required to establish the given flux is %f A',I)  
