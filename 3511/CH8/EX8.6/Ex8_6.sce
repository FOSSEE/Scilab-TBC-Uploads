clc;
m=14; // mass flow rate in kg/s
rp=4; // pressure ratio
N=12000; // Speed in rpm
T01=288; // Inlet temperature in kelvin
p01=1.033; // Inlet pressure in bar
Cp=1.005;// Specific heat   at constant pressure in kJ/kg K
Cv=0.717;// Specific heat   at constant volume in kJ/kg K
r=1.4; // Specific heat ratio 
R=287; // Characteristic gas constant in J/kg K
mu=0.9; // Slip factor
chi=1.04; // Power input factor
eff_c=0.8; // Compressor efficiency

T03=(((rp^((r-1)/r))-1)*T01/eff_c)+T01;;
U=sqrt ((T03-T01)*Cp*10^3/(chi*mu));
D=U*60/(3.14*N);

T3=T03/1.2;
c2=sqrt (r*R*T3);
ca2=sqrt (c2^2-(mu*U)^2);
T02=eff_c*(T03-T01)+T01;
Loss=T03-T02;
T2=T3-Loss/2
p2=p01*(T2/T01)^(r/(r-1));
row2=p2*10^5/(R*T2);
A=m/(row2*ca2);
Depth=A/(2*3.14*D/2);

disp ("cm",D*100,"Overall diameter of the Impeller  = ");
disp ("cm   (roundoff error)",Depth*100,"Depth of the diffuser = ");
