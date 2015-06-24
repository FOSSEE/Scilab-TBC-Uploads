//Section-12,Example-4,Page no.-SS.33
//To calculate atomic radius of Molybdenum.
clc;
n=2
M=95.94
N=6.02*10^23
D=10.2
a=(((n*M)/(N*D))^(1/3))                    //Lattice parameter
r=(a*sqrt(3))/4
disp(r,'Atomic radius of Molybdenum')
