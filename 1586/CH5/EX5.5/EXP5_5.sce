clc;funcprot(0);//EXAMPLE 5.5
// Initialisation of Variables
N=1;..........//N0. of atoms on one side of iron bar
H=1;..........//No. of atoms onother side of iron bar
d=3;.......//Diameter of an impermeable cylinder in cm
l=10;.....//Length of an impermeable cylinder in cm
A1=50*10^18*N;..........// No. of gaseous Atoms per cm^3 on one side 
A2=50*10^18*H;..........//No. of gaseous Atom per cm^3 on one  side
B1=1*10^18*N;...........//No. of gaseous atoms per cm^3 on another side
B2=1*10^18*H;..........//No. of gaseous atoms per cm^3 on another side
t=973;...........//The di¤usion coefficient of nitrogen in BCC iron at 700 degree celsius in K
Q=18300;.........//The activation energy for di¤usion of Ceramic
Do=0.0047;.......//The pre-exponential term of ceramic
R=1.987;.........//Gas constant in cal/mol.K
//CALCULATIONS
T=A1*(%pi/4)*d^2*l;....//The total number of nitrogen atoms in the container in N atoms
LN=0.01*T/3600;......//The maximum number of atoms to be lost per second in N atoms per Second
JN=LN/((%pi/4)*d^2);.........//The Flux of ceramic in Natoms per cm^2. sec.
Dn=Do*exp(-Q/(R*t));........//The di¤usion coefficient of Ceramic in cm^2/Sec
deltaX=Dn*(A1-B1)/JN;.........//minimum thickness of the membrane in cm
LH=0.90*T/3600;........//Hydrogen atom loss per sec.
JH=LH/((%pi/4)*d^2);.........//The Flux of ceramic in Hatoms per cm^2. sec.
Dh=Do*exp(-Q/(R*t));........//The di¤usion coeficient of Ceramic in cm^2/Sec
deltaX2=((1.86*10^-4)*(A2-B2))/JH;.......//Minimum thickness of  the membrane in cm
disp(deltaX,"Minimum thickness of  the membrane of Natoms in cm")
disp(deltaX2,"Minimum thickness of  the membrane of Hatoms in cm")
