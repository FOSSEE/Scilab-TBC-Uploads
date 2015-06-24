clc;clear;
//Example 17.3

//given data
T0=200+273;//converted in K
P0=1400;
//stagnant temp. & pressure is same as inlet due to small inlet velocity
P=1200;
m=3;

//from Table A-2a
cp=0.846;//in kJ/kg-K
R=0.1889;//in kJ/kg-K
k=1.289;

//calculations
T=T0*(P/P0)^((k-1)/k);
V=sqrt(2*cp*(T0-T)*1000);//factor of 1000 to convert kJ to J
p=P/(R*T);
A=m/(p*V);
c=sqrt(k*R*T*1000);//factor of 1000 to convert kJ to J
Ma=V/c;
disp(V,'velocity in m/s');
disp(p,'density in kg/m^3');
disp((A*10000),'flow area in cm^2');
disp(Ma,'Mach number');
