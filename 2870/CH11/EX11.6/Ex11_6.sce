clc;clear;
//Example 11.6

//given data
COPR=0.1;
T1=20;
T2=4;
t=30*60;//converted in sec
V=0.350;

//constants used
p=1;//on kg/L
c=4.18;//in kJ/kg-C from Table A-3

//calculations
m=p*V;
Qcooling=m*c*(T1-T2)/t*1000;//converted in W by multiplying by 1000
Win=Qcooling/COPR;
Win=floor(Win);
disp(Win,'the average electric power consumed by the thermoelectric refrigerator in W')
