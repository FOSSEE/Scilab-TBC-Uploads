//Section-12,Example-3,Page no.-SS.40
//To find the number of atoms per sq.mm in(100) plane.
clc;
Ia_D=3.499                   //Interatomic distance
r=Ia_D/2
a=((4*r)/sqrt(2))*10^-8
A=a^2*10^2
n=2
A_1=n/A
disp(A_1,'Atoms per sq. mm. in the given plane')
