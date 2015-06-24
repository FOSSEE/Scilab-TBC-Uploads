clc;clear;
//Example 5.10

//given data
T1=15;
P1=300;
T2=25;
T3=70;
P3=1000;//in kPa
T4=35;
mr=6;

//from Table A-4, A-13 and A-11
h1=62.982;
h2=104.83;
h3=303.85;
h4=100.87;

//calculations
//mass balance m1=m2=mw and m3=m4=mr
//energy balance m1*h1 + m3*h3 =  m2*h2 + m4*h4
//combining them mw*(h1-h2) = mr*(h4-h3)
mw= mr*(h4-h3)/(h1-h2);
disp(mw,'mass flow rate of cooling water in kg/min');
Qin=mw*(h2-h1);
Qin=round(Qin);
disp(Qin,'heat transfer rate in kJ/min')
