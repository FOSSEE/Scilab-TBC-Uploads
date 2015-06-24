clc;clear;
//Example 11.5

//given data
m=0.1;
T1=0+460;
T3=80+460;//converting into R from F

//from Table A–17E
// at T1
h1=109.90;
Pr1=.7913;
//pressure ratio at compressor is 4
Pr2=4*Pr1;
//at Pr2
h2=163.5;
T2=683;
//at T3
h3=129.06;
Pr3=1.3860;
//pressure ratio at compressor is 4
Pr4=Pr3/4;
//at Pr4
h4=86.7;
T4=363;

//calculations
qL=h1-h4;
Wout=h3-h4;
Win=h2-h1;
COPR=qL/(Win-Wout);
Qrefrig=m*qL;
disp((T4-460),'the minimum temperatures in the cycle in F');
disp((T2-460),'the maximum temperatures in the cycle in F');
disp(COPR,'the coefficient of performance');
disp(Qrefrig,'the rate of refrigeration for a mass flow rate of 0.1 lbm/s. in Btu/s')
