clc;
clear;

printf("\n Example 4.1\n");

d=0.006;//Diameter of the cylinder
Gamma=1.4;
//The critical pressure ratio for discharge through the valve
C_r=(2/(Gamma+1))^(Gamma/(Gamma-1));
printf("\n The graphs are plotted between\n (1) Rate of discharge of air from the cylinder against cylinder pressure\n (2) For a constant pressure of 5 MN/m^2 in the cylinder, the discharge rate vs Downstream pressure.")
//(i) Sonic velocity will occur until the
P_c=101.3/C_r;//pressure at which sonic velocity will occur
M=29;//molecular mass of air
//The rate of discharge for cylinder pressures greater than 191.1 kN/m^2 is
//given by equation 4.30: taking mean value for Gamma i.e. 1.47
//we get 
//G_max=4.23e-8*P1 kg/s
//For cylinder pressures below 191.1 kN/m2, the mass flowrate is given by equation 4.20
P1a=[0.1 0.125 0.15 0.17 0.19 0.2 0.5 1.0 2.0 3.0 4.0 5.0 6.0]
for i=5:13
    G(i)=4.23e-2*P1a(i);
end
for j=1:4
    G(j)=0.0314*P1a(j)^0.286*((1-0.519*P1a(j)^(-0.286)))^0.5;
end
xset('window',1)
plot(P1a,G);
xtitle('Rate of discharge of air vs Cylider Pressure','Cylinder pressure P1a (MN/m )','Mass flow (kg/s)');
xset('window',2);
P2a=[0 1 2 2.65 3 3.5 4 4.5 4.9 4.95 5];
for j=5:11
    G2(j)=0.2548*P2a(j)^0.714*((1-0.631*P2a(j)^0.286))^0.5;
end
for i=1:4
    G2(i)=0.210;
end
plot(P2a,G2);
xtitle('Rate of discharge of air vs Downstream Pressure','Downstream pressure P2a (MN/m )','Mass flow (kg/s)')