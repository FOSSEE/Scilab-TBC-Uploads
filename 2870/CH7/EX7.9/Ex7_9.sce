clc;clear;
//Example 7.9

//given data
P1=100;
T1=290;
P2=600;
T2=330;

//from Table A-17
s02=1.79783;
s01=1.66802;
//Table A-2b
cpavg=1.006;

//constants used
R=0.287;//in kJ/kg -K

//calculations
//part-a
s21=s02-s01-R*log(P2/P1);//stands for s2 - s1
disp(s21,'entropy change using property values from air table in kJ/kg-K');
s21=cpavg*log(T2/T1)-R*log(P2/P1);//stands for s2 - s1
disp(s21,'entropy change using average specific heat in kJ/kg-K')
