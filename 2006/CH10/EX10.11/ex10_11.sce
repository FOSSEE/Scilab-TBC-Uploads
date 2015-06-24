clc;
p1=100; // Pressure at inlet in kPa
T1=30; // Temperature at inlet in degree celcius
V1=0; // Velocity at inlet in m/s
p2=350; // Pressure at outlet in kPa
T2=141; // Temperature at exit in degree celcius
V2=90; // Velocity at exit in m/s
p0=100; // Pressure of Surroundings in kPa
T0=30; // temperature of Surroundings in degree celcius
k=1.4; // Index of the Isentropic compression process
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
// (a).Adiabatic or polytropic compression
T2s=(T1+273)*(p2/p1)^((k-1)/k); // Temperature after isentropic compression
disp ("T2s>T2. Hence there is cooling . Compression is polytropic.","K",T2s,"Temperature after isentropic compression =", "(a).Adiabatic or polytropic compression");
// (b).The first law efficiency of the compressor
wa=Cpo*(T1-T2)-V2^2/2000; //Actual work of compression
wT=(-R*(T1+273)*log (p2/p1))-(V2^2/2000); // Isothermal work
eff_Ilaw=wT/wa; // The first law efficiency of the compressor
disp ("%",eff_Ilaw,"(b).The first law efficiency of the compressor = ");
// (c).Minimum work input & Irreversibility
d_AE=(Cpo*(T1-T2))+((T0+273)*((R*log (p2/p1))-(Cpo*log ((T2+273)/(T1+273)))))-V2^2/2000; // decrease in availability
wmin=d_AE; // Minimum work input
wrev=wmin;
I=wrev-wa; // Irreversibility
disp ("kJ/kg",I,"Irreversibility =","kJ/kg",wmin,"Minimum work input =","(c).Minimum work input & Irreversibility");
// (d).Second law efficiency of the compressor
eff_IIlaw=wmin/wa; // Second law efficiency of the compressor
disp ("%",eff_IIlaw*100,"(d).Second law efficiency of the compressor =");

