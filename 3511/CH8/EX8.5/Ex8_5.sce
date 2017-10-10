clc;
N=12500; // Speed in rpm
m=15; // Mass flow rate in kg/s
rp=4; // Pressure ratio
eff_c=0.75; // Isentropic efficiency 
mu=0.9; // Slip factor
pi=0.3; // Flow coefficient at impeller exit
D=0.15; // Hub diameter in m
ca2=150; // Axial velocity in m/s
T01=275; // Inlet temperature in kelvin
p01=1; // Inlet pressure in bar
Cp=1.005;// Specific heat   at constant pressure in kJ/kg K
Cv=0.717;// Specific heat   at constant volume in kJ/kg K
r=1.4; // Specific heat ratio 
R=287; // Characteristic gas constant in J/kg K

u2=ca2/pi;
P=m*mu*u2^2/1000; // Power output
D2=u2*60/(3.14*N);
T1=T01-ca2^2/(2*Cp*10^3);
p1=p01*(T1/T01)^(r/(r-1));
row1=p1*10^5/(R*T1);
A1=m/(row1*ca2);
D1=sqrt ((A1*4/(3.14))+D^2);
p3_p1=rp;
p2=2*p1;
T_2=T1*(p2/p1)^((r-1)/r);
T2=T1+(T_2-T1)/eff_c;
row2=p2*10^5/(R*T2);
W2=(m)/(row2*ca2*3.14*D2);

disp ("kW",P,"Power = ");
disp ("Impeller Diameters");
disp ("cm",D2*100,"D2 = ","cm   (roundoff error)",D1*100,"D1 = ");
disp ("Impeller width")
disp ("cm   (roundoff error)",W2*100,"W2 = ");
