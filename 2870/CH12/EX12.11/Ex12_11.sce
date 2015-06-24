clc;clear;
//Example 12.11

//given data
T1=220;
P1=5;
T2=300;
P2=10;

//constants used
Ru=8.314;//on kJ/kmol- K

//from Table A–1
Tcr=154.8;
Pcr=5.08;

//calculations

//part - a
disp('part - a');
//by assuming ideal-gas behavior
//from Table A–19
h1=6404;
h2=8736;
s2=205.213;
s1=196.171;
h21i=h2-h1;//h2 - h1 ideal
s21i=(s2-s1)-Ru*log(P2/P1);//s2 - s1 ideal
disp(h21i,'the enthalpy change in kJ/kmol');
disp(s21i,'the entropy change in kJ/kmol-K');

//part - b
disp('part - b');
//by accounting for the deviation from ideal-gas behavior
TR1=T1/Tcr;
Pr1=P1/Pcr;
//from the generalized charts at each state
Zh1=0.53;
Zs1=0.25;
TR2=T2/Tcr;
Pr2=P2/Pcr;
//from the generalized charts at each state
Zh2=0.48;
Zs2=0.20;
h21=h21i-Ru*Tcr*(Zh2-Zh1);
s21=s21i-Ru*(Zs2-Zs1);
disp(h21,'the enthalpy change in kJ/kmol');
disp(s21,'the entropy change in kJ/kmol-K');
