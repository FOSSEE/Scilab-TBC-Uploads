clc;clear;
//Example 17.2

//given data
V=200;
T=30+273;//converted in K

//from Table A-2a
R=0.287;//in kJ/kg-K
k=1.4;

//calculations
c=sqrt(k*R*T*1000);//factor of 1000 to convert kJ to J
c=ceil(c);
disp(c,'the speed of sound in m/s');
Ma=V/c;
disp(Ma,'the Mach number at the diffuser inlet')
