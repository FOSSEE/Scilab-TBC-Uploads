clc;clear;
//Example 14.3

//given data
T1=25;
T2=15;
P2=101.325;

//from Table A-2a & A-4
//at T1
Psat1=3.1698;
hg1=2546.5;
//at T2
Psat2=1.7057;
hfg2=2465.4;
hf2=62.982;
cp=1.005;

//calculations
w2=0.622*Psat2/(P2-Psat2);
w1=(cp*(T2-T1)+w2*hfg2)/(hg1-hf2);
disp(w1,'the specific humidity in kg water/kg of dry ai');
RH1=w1*P2/((0.622+w1)*Psat1);
disp(RH1,'the relative humidity');
h=cp*T1+w1*hg1;
disp(h,'the enthalpy of the air in kJ/kg of dry air')
