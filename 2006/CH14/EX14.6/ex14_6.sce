clc;
// The complete chemical equation is                                            //[0.14H2+0.03CH4+0.27CO+0.045CO2+0.01O2+0.505N2]+0.255(O2+3.75N2) →0.2H2O+0.345CO2+1.44N2
a=0.14; // Composition of H2 in air
b=0.03; // Composition of CH4 in air
c=0.27; // Composition of CO in air
d=0.045; // Composition of CO2 in air
e=0.01; // Composition of O2 in air
f=0.505; // Composition of N2 in air
g=(0.265-0.01); // O2 requirement from atmospheric air with 1% O2 already in fuel
h=3.76; // By nitrogen balance 
i=1; // mole of the air
AFvol=(g+(g*h))/i; // Air fuel ratio (theroretical)
AFv=1.1*AFvol; // Air fuel ratio on mol (volume) basis
disp ("kmol actual air/kmol fuel",AFv,"Air fuel ratio on mol (volume) basis =")
M1=2; // Molecular mass of H2
M2=16; // Molecular mass of CH4
M3=28; // Molecular mass of CO
M4=44; // Molecular mass of CO2
M5=32; // Molecular mass of O2
M=a*M1+b*M2+c*M3+d*M4+e*M5+f*M3; // Molecular mass of Fuel
Ma=28.84; // Molecular mass of air
AFm=AFv*Ma/(i*M); // Air fuel ratio on mass basis
disp ("kg air / kg fuel",AFm,"Air fuel ratio on mass basis = ");
