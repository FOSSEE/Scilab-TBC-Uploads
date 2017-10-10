clc;
p1=1; // Pressure at state 1 in bar
T1=300; // Temperature at state 1 in kelvin
p4=5; // Pressure at state 4 in bar
T5=1250; // Temperature at state 5 in kelvin
Cp=1.005; // Specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio

rp=p4/p1; // pressure ratio
p2=sqrt (rp); // Because of perfect intercooling
c1=p2^((r-1)/r); 
T2=T1*c1; // Temperature at state 2
T4=T2; T3=T1;

Wc1=Cp*(T2-T1); // Work of compressor 1
Wc=2*Wc1; // net work of compressor
WT1=Wc;
T6=T5-(WT1/Cp); // Temperature at state 6
p5_p6=(T5/T6)^(r/(r-1)); // Pressure ratio
p6=rp/p5_p6; // Pressure at state 6
p7=p1; T7=T5;p8=p6;
T8=T7*(p7/p8)^((r-1)/r); // Temperature in state 8
WT2=Cp*(T7-T8); // Turbine 2 work
q=Cp*(T5-T4)+Cp*(T7-T6); // Heat supplied
eff=WT2/q; // Efficiency of the cycle
// With regenerator
T9=T8;
q_withregen=Cp*((T5-T9)+(T7-T6)); // Heat supplied with regenerator
eff_withregen=WT2/q_withregen; // Efficiency of the cycle with regenerator
I_eff=(eff_withregen-eff)/eff_withregen; // Percentage improvement in efficiency

disp ("%",eff*100,"Efficiency of the cycle = ","kJ/kg",q,"Heat supplied = ","kJ/kg",WT2,"Work of turbine = ","(i). Without regenerator ");
disp ("%",eff_withregen*100,"Efficiency of the cycle = ","kJ/kg   (roundoff error)",q_withregen,"Heat supplied = ","(ii). With regenerator" );

disp ("%",I_eff*100,"Percentage improvement in efficiency = ");
