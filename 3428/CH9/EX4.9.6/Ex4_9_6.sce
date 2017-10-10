//Section-4,Example-2,Page no.-I.22
//To calculate the force constant and Bond length of the CO bond from the given data.
clc;
h=6.626*10^-34
v_Qbar=2143.26
v_0bar=v_Qbar
c=3*10^10
mu=1.1385*10^-26
v_bar=2140
k=(4*%pi^2*c^2*v_0bar^2*mu)
disp(k,'Force constant of the molecule(N/m)')
B=7.655/4
r=sqrt(h/(8*%pi^2*mu*c*B))
disp(r,'Bond length of the CO bond(m)')

