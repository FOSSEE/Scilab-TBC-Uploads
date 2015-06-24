clc;clear;
//Example 16.7

//given data
T=120+273.15;//in K

//from Table A-4
hf=503.81;
hg=2706;
sf=1.5279;
sg=7.1292;

//calculations
disp('liquid phase');
gf=hf-T*sf;
disp(gf,'gf value in kJ/kg');
disp('vapour phase');
gg=hg-T*sg;
disp(gg,'gg value in kJ/kg');
