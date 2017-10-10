clc;
// answer is given wrong in the book
d=0.2; // mean diameter of mild steel ring
ac=50*10^-4; // cross sectional area of core
uo=4*%pi*10^-7; // free space permeability
ur=800; // relative permeability
f=1*10^-3; // required flux
N=200; // Number of turns
l=%pi*d // length of core
R=l/(uo*ur*ac); // reluctance of ring
printf('reluctance offered by ring is %f AT/Wb\n',R);
mmf=f*R; // mmf produced in ring
i=mmf/N;
printf('current required to produce the desired flux is %f A',i);
