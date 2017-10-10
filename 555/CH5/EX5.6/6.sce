// Implementation of example 5.6
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

Va=270 // (air speed in m/s)
Ha=260 // (enthalpy of air in kJ/kg)
Hg=912 // (enthalpy of gas in kJ/kg)
Ef=44500 // (energy in kJ/kg)
wf=0.019 // (fuel ratio)
Q=21 // (heat loss in kJ/kg)
wg=wf+1;
// it is given that 5% of energy is not released in reaction
Eg=0.05*Ef*(wf/wg);
// the steady flow rate equation is wa*(hg+Va^2/2)+wf*Ef+Q=wg*(hg+Vg^2/2+Eg)
temp=((Ha+Va*Va/2000)+wf*Ef-Q-wg*(Hg+Eg));
temp=temp*wg*2000;
Vg=sqrt(temp);
printf("velocity of exhaust gas = %.2f",Vg);
// end