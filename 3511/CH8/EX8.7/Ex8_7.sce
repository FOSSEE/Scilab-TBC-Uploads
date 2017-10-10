clc;
N=10000; // Speed in rpm
Q=600; // Flow rate m^2/min
rp=4; // Pressure ratio 
eff_c=0.82; // Compressor efficiency
T01=293; // Inlet temperature in kelvin
p01=1.0; // Inlet pressure in bar
Cp=1.005;// Specific heat   at constant pressure in kJ/kg K
Cv=0.717;// Specific heat   at constant volume in kJ/kg K
r=1.4; // Specific heat ratio 
R=287; // Characteristic gas constant in J/kg K
ca=60; // Axial velocity in m/s
D2_D1=2 ;// Diameter ratio

T_03=T01*rp^((r-1)/r);
T03=T01+(T_03-T01)/eff_c;
u2=sqrt (Cp*10^3*(T03-T01));
Wc=u2^2; // Work of compression
D2=(u2*60/(3.14*N));
D1=D2/D2_D1;
T1=T01-(ca^2/(2-Cp*10^3));
p1=p01*(T1/T01)^(r/(r-1));
row1=p1*10^5/(R*T1);
Wroot=(Q/60)*(1/(ca*3.14*D1));
u1=3.14*N*D1/60;
alpha_root=atand (ca/u1);
alpha_tip= atand (ca/u2);

disp ("(i).Power input ");
disp ("kW/kg/s",Wc/1000,"Wc = ");
disp ("(ii).Impeller Diameters");
disp ("m",D2,"D2 = ","m",D1,"D1 = ");
disp ("(iii).Impeller and diffuser blade angles at inlet");
disp ("degree",alpha_tip,"alpha_tip = ","degree",alpha_root,"alpha_root = ");
