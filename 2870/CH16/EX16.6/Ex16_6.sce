clc;clear;
//Example 16.6

//reaction
// H2 + 0.5O2 = H2O
//enthalpy data
//of H2
hfH=-241820;
h2000H=82593;
h298H=9904;
//of O2
hfO=0;
h2000O=61400;
h298O=8468;
//of H2O
hfw=0;
h2000w=67881;
h298w=8682;
//Kp data from A-28
Kp2=869.6;
Kp1=18509;
T1=1800;
T2=2200;

//constants used
Ru=8.314;//in kJ/kmol K

//calculations
//part - a
hR=1*(hfH+h2000H-h298H)-1*(hfO+h2000O-h298O)-0.5*(hfw+h2000w-h298w);
disp(floor(hR),'enthalpy of the reaction in kJ/kmol using enthalpy data');
//part - b
hR=Ru*(T1*T2)/(T2-T1)*log(Kp2/Kp1);
disp(round(hR),'enthalpy of the reaction in kJ/kmol using Kp data');
