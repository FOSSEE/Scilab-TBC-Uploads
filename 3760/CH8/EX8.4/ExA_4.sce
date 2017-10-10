clc;
N=1000; // Number of turns
f=1*10^-3; // flux in central limb
Ac=8*10^-4; // Area of central limb
Ao=4*10^-4; // Area of outer limb
lg=2*10^-3; // length of air gap
lc=0.15; // length of central limb in metre 
lo=0.25; // length of outer limb in metre 
uo=4*%pi*10^-7; // permeability of free space
disp('case a');
// for ur=infinity, reluctance offered by cast steel is zero
Rl1=lg/(uo*Ao); // reluctance offered by outer limb
Rl2=lg/(uo*Ac); // reluctance offered by central limb
// Assuming magnetic circuit as a close circuit, applying KVl in one of loop gives 
I=(f*(Rl2+(Rl1/2)))/N;
printf('Coil current for first case is %f A\n',I);
disp('case b');
ur=6000; // relative permability
Rlc1=(lc+lo)/(uo*ur*Ao); // reluctance of outer steel core (including the top)
Rlc2=(lc)/(uo*ur*Ac); // reluctance offered by central steel core
r=(Rlc1+Rl1)/2; // resultant of outer reluctance
// By kVL we get 
I=(f*(Rlc2+Rl2+r))/N; 
printf('Coil current for second case is %f A\n',I);
