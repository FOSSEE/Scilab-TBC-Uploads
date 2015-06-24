clc;clear;
//Example 18.7
//calculation of hole concentration

//given values
ni=2.4*10^19;//carrier concentration per m^3
N=4*10^28;//concentration of ge atoms per m^3

//calculation
ND=N/10^6;//donor cocntrtn
n=ND;//no of electrones

p=ni^2/n;
disp(p,'concentartion of holes per m^3 is');