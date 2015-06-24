P=5.3*10^4;//ambient pressure in N/m^2
T=253;//ambient temperature in K
R=287;// gas constant for dry air in J/Kg.K
D=P/(R*T)
//as we do not have this value of pressure and density from standard table we will take two nearest value and interpolate to get the desired result.  
H1=5100;
P1=5.331*10^4;//pressure corresponding to H1
H2=5200;
P2=5.2621*10^4;//pressure corresponding to H2
Hp=H1+[(H2-H1)*((P1-P)/(P1-P2))]//pressure altitude corresponding to p
H3=5000;
D3=0.73643;//density corresponding to H3 in Kg/m^3
H4=5100;
D4=0.72851;//density corresponding to H4 in Kg/m^3
Hd=H3+[(H4-H3)*((D3-D)/(D3-D4))] //density altitude