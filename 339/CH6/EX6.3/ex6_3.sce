//define problem parameters

ni=1.5e10*1e6; //intrinsic carrier concentration in Si [m^(-3)]
Na=1e15*1e6; //acceptor doping concentration [m^(-3)]
Nd=5e15*1e6; //donor concentration [m^(-3)]
A=1e-4*1e-4; //cross sectional area [m^2]
eps_r=11.9;  //cross sectional area [m^2]

//define physical constants (SI units)
q=1.60218e-19; //electron charge
k=1.38066e-23; //Boltzmann's constant
eps0=8.85e-12; //permittivity of free space

eps=eps_r*eps0;

T=300; //temperatuure

//compute diffusion barrier voltage
Vdiff=k*T/q*log(Na*Nd/ni^2)

//junction capacitance at zero applied voltage
C0=A*sqrt(q*eps/(1/Na+1/Nd)/2/Vdiff)

//extents of the space charge region
dn=sqrt(2*eps*Vdiff/q*Na/Nd/(Na+Nd));
dp=sqrt(2*eps*Vdiff/q*Nd/Na/(Na+Nd));

//define range for applied voltage
VA=-5:0.1:Vdiff;

//compute junction capacitance
C=C0*(1-VA/Vdiff).^(-1/2);

plot(VA,C/1e-12);
title('Junction capacitance of abrupt Si pn-contact');
xlabel('Applied junction voltage V_A, Volts');
ylabel('Junction capacitance C, pF');
