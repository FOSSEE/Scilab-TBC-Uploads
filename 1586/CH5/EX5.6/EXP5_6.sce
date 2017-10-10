clc;funcprot(0);//EXAMPLE 5.6
// Initialisation of Variables
n=2;..........//no of atoms/ cell in BCC Tungsten
a0=3.165;..........//The lattice parameter of BCC tungsten in Angstromes
W=n/(a0*10^-8)^3;.........//The number of tungsten atoms per cm^3
Cth=0.01*W;......//The number of thorium atoms per cm^3
Cg=-Cth/0.01;.......//The concentration gradient of Tungsten in atoms/cm^3.cm
Q=120000;.........//The activation energy for diffusion of Tungsten
Q2=90000;.........//The activation energy for diffusion of Tungsten
Q3=66400;.........//The activation energy for diffusion of Tungsten
Do=1.0;.......//The pre-exponential term of Tungsten
Do2=0.74;.......//The pre-exponential term of Tungsten
Do3=0.47;.......//The pre-exponential term of Tungsten
R=1.987;.........//Gas constant in cal/mol.K
t=2273;..........//The diffusion coefficient of nitrogen in BCC iron at 2000 degree celsius in K
//CALCULATIONS
D1=Do*exp(-Q/(R*t));........//The diffusion coeficient  of Tungsten in cm^2/Sec
J1=-D1*Cg;............//Volume Diffusion in Th atoms/cm^2.sec.
D2=Do2*exp(-Q2/(R*t));........//The diffusion coeficient  of Tungsten in cm^2/Sec
J2=-D2*Cg;............//Grain boundary Diffusion in Th atoms/cm^2.sec.
D3=0.47*exp(-66400/(1.987*2273));........//The diffusion coeficient  of Tungsten in cm^2/Sec
J3=-D3*Cg;............//Surfae Diffusion in Th atoms/cm^2.sec.

disp(W,"The number of tungsten atoms per cm^3:")
disp(Cth,"The number of thorium atoms per cm^3:")
disp(Cg,"The concentration gradient of Tungsten in atoms/cm^3.cm:")
disp(D1,"The diffusion coeficient  of Tungsten in cm^2/Sec:")
disp(J1,"Volume Diffusion in Th atoms/cm^2.sec.:")
disp(D2,"The diffusion coeficient  of Tungsten in cm^2/Sec:")
disp(J2,"Grain boundry Diffusion in Th atoms/cm^2.sec.:")
disp(D3*10^7,"The Surface diffusion coeficient of Tungsten in cm^2/Sec:")
disp(J3,"Surface Diffusion in Th atoms/cm^2.sec.:")
