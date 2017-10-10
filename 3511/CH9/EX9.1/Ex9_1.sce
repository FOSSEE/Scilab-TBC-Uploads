clc;
n=10; // No of stages in the axial flow compressor
rp=5; // Overall pressure ratio
eff_C=0.87; // Overall isentropic efficiency
T1=15+273; // Temperature of air at inlet in kelvin
u=210; // Blade speed in m/s
ca=170; // Axial velocity in m/s
wf=1; // Work factor
r=1.33; // Specific heat ratio
Cp=1.005; // Specific heat in kJ/kg K

Del_Tstage=(T1*(rp^((r-1)/r)-1))/(n*eff_C); // Temperature increase per stage
// By property relations and let us assume 
// tan_beta1-tan_beta2=Del_Tstage*Cp/(wf*u*ca)
// tan_beta1+tan_beta2=u/ca   for 50% reaction 
// To solve this above equations using matrix method
a=[1,-1;1,1]; c=[(Del_Tstage*Cp*10^3/(wf*u*ca));u/ca];
b=a\c;
beta1=atand(b(1));// Blade angles at inlet
beta2=atand(b(2)); // Blade angles at outlet

disp ("degree   (roundoff error)",beta2,"Blade angle at outlet = ","degree   (roundoff error)",beta1,"Blade angle at inlet = ");
