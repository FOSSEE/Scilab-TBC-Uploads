clc;clear;
//Example 7.12

//given data
P2=1000;
P1=100;

//from Table A-5
//At P2
v1=0.001043;

//calculations
Wrev=v1*(P2-P1);
disp(Wrev,'compressor work as saturated liquid at inlet in kJ/kg')
//from Table A-5
//at P1 as sat. vapour
h1=2675.0;
s1=7.3589;
s2=s1
//from Table A-6
//at P2 and s2
h2=3194.5;
Wrev=h2-h1;
disp(Wrev,'compressor work as saturated vapor at inlet in kJ/kg')
