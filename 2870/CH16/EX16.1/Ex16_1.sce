clc;clear;
//Example 16.1
//round off error

//given data
T=298.15;

//from Table A-26
g=455510;

//constants used
R=8.314;//in kJ/kmol K

//calculations
// N2 = 2N
dG=2*g;
lnKp=-dG/(R*T);
disp(lnKp,'in comparison to Table A-28 ln Kp value of -367.5 our result is');
Kp=exp(lnKp);
disp(Kp,'the equilibrium constant is')
