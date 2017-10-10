//page 87
clc;funcprot(0);//EXAMPLE 4.1
// Initialisation of Variables
Lp=0.36151;........//The lattice parameter of FCC copper in nm
T1=298;..........//Temperature of copper in K
Qv=20000;...........//Heat required to produce a mole of vacancies in copper in cal
R=1.987;.........//The gas constant in cal/mol-K
//CALCULATIONS
n=4/(Lp*10^-8)^3;..........//The number of copper atoms or lattice points per cm^3  in atoms/cm^3
nv1=n*exp(-Qv/(T1*R));.......//concentration of vacancies in copper at 25 degree celsius  in vacancies /cm^3
nv2=nv1*1000;.......//concentration of vacancies in copper atoms at T2 temperature
T2=-Qv/(R*log(nv2/n));.......//temperature at which this number of vacancies forms in copper in K
disp(round(T2-273),"Temperature at which this number of vacancies forms in copper in Degree celsius:")
