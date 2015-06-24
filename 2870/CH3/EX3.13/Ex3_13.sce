clc;clear;
//Example 3.13
//Answer of part c-d are having slight difference due to approximation in molar volumne in the textbook which here is caluculated to the approximation of 7 decimal digits

//given values
T=175;
v=0.00375;
Pex=10000;//experimentaion determination

//from Table A-1
R=0.2968// in kPa m^3/kg K

//calculating

//Part-a
P=R*T/v;
disp(round(P),'using the ideal-gas equation of state in kPa')
e=(P-Pex)/Pex*100;
disp(e,'error is');


//Part-b
//van der Waals constants from Eq. 3-23
a=0.175;
b=0.00138;
//from van der waal eq.
P=R*T/(v-b)-a/v^2;
disp(round(P),'using the van der Waals equation of state,');
e=(P-Pex)/Pex*100;
disp(e,'error is');

//Part-c
//constants in the Beattie-Bridgeman equation from Table 3–4
A=102.29;
B=0.05378;
c=4.2*10^4;
Ru=8.314;//in kPa m^3/kmol K
M=28.013;//molecular weight in kg/mol
vb=M*v;//molar vol.
P=(Ru*T)/(vb^2)*(1-((c)/(vb*T^3)))*(vb+B)-(A/vb^2);
disp(round(P),'using the Beattie-Bridgeman equation');
e=(P-Pex)/Pex*100;
disp(e,'error is');

//Part-d
//constants of Benedict-Webb-Rubin equation from Table 3–4
a=2.54;
b=0.002328;
c=7.379*10^4;
alp=1.272*10^-4;
Ao=106.73;
Bo=0.040704;
Co=8.164*10^5;
gam=0.0053;
P= ((Ru*T)/vb) + ( (Bo*Ru*T) - Ao - Co/T^2 )/ vb^2 + (b*Ru*T-a)/vb^3 +( a*alp/vb^6) + (c/(vb^3*T^2)) * (1 + (gam/vb^2)) * exp(-gam/vb^2);
disp(round(P),'using Benedict-Webb-Rubin equation');
e=(P-Pex)/Pex*100;
disp(e,'error is')
