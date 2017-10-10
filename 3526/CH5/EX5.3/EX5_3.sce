clc;funcprot(0);//EXAMPLE 5.3
//page 124
// Initialisation of Variables
X=0.1;.......//Thickness of SIlicon Wafer in cm
n=8;.......//No. of atoms in silicon per cell
ni=1;..........//No of phosphorous atoms present for every 10^7 Si atoms
ns=400;.......//No of phosphorous atoms present for every 10^7 Si atoms
ci1=(ni/10^7)*100;..........//Initial compositions in atomic percent
cs1=(ns/10^7)*100;...........//Surface compositions in atomic percent
G1=(ci1-cs1)/X;.....//concentration gradient in percent/cm
a0=1.6*10^-22;........//The lattice parameter of silicon
v=(10^7/n)*a0;......//volume of the unit cell in cm^3
ci2=ni/v;..........//The compositions in atoms/cm^3
cs2=ns/v;..........//The compositions in atoms/cm^3
G2=(ci2-cs2)/X;.....//concentration gradient in percent/cm^3.cm
disp(G1,"concentration gradient in percent/cm:")
disp(G2,"concentration gradient in percent/cm^3.cm:")
