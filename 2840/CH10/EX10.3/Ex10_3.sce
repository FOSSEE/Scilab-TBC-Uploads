clc;
density=7.13*1e3  //in kg/m^3
M=65.4
N=6.023*1e26 //avogedro number
n=(2*density*N)/M
n1=n^(2/3);
Ef=3.65*1e-19*n1; //in eV
Ef1=(3/5)*Ef //in eV
disp(+'eV',Ef,'fermi energy =');
disp(+'eV',Ef1,'Mean energy at T=0K =');
//there is slight variation in answer than book's answer.. checked in calculator too..(book's mistake)
