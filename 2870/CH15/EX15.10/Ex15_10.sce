clc;clear;
//Example 15.10

//given values
T0=298;//in K

//contansts used 
Ru=8.314;//in kJ/kmol K

//calculations
// CH4 + 3(O2 + 3.76N2)  = CO2 + 2H2O + O2 + 11.28N2
//from std. values of heat of formation and ideal gasses in Appendix
//methane as m
hfm=-74850;
//oxygen as o
hfo=0;
h298o=8682;
//nitrogen as n
hfn=0;
h298n=8669;
//water as w
hfw=-241820;
h298w=9904;
//carbondioxide as c
hfc=-393520;
h298c=9364;
//x refers to hCO2 + 2hH2O + 11.28hN2
xac=1*(hfm)+1*(h298c-hfc)+2*(h298w-hfw)+11.28*(h298n-hfn);
//from EES the Tprod is determined by trial and error
Tprod=1789;
disp(Tprod,'the temperature of the products in K');
//entropy calculations by using table A-26
//Si = Ni*(si - Ruln yiPm
//reactants
Sm=1*(186.16-Ru*log(1*1));
So=3*(205.04-Ru*log(0.21*1));
Sn=11.28*(191.61-Ru*log(.79*1));
Sreact=Sm+So+Sn;
//products
Nt=1+2+1+11.28;//total moles
yc=1/Nt;
yw=2/Nt;
yo=1/Nt;
yn=11.28/Nt;
Sc=1*(302.517-Ru*log(yc*1));
Sw=2*(258.957-Ru*log(yw*1));
So=1*(264.471-Ru*log(yo*1));
Sn=11.28*(247.977-Ru*log(yn*1));
Sprod=Sc+Sw+So+Sn;
Sgen=Sprod-Sreact;
disp(Sgen,'exergy destruction in kJ/kmol - K');
Xdestroyed=T0*Sgen/1000;//factor of 1000 for converting kJ to MJ
Xdestroyed=ceil(Xdestroyed);
disp(Xdestroyed,'in MJ/kmol');
//This process involves no actual work. Therefore, the reversible work and energy destroyed are identical
Wrev=Xdestroyed;
disp(Wrev,'the reversible work in MJ/kmol')
