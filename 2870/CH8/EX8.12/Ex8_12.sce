clc;clear;
//Example 8.12

//given data
m=2;
T0=70+460;//in R
P1=20;
T1=70+460;//in R
T2=130+460;//in R

//constants used
Cv=0.172;//in Btu/lbm - F

//calculations
Xdestroyed=T0*m*Cv*log(T2/T1);
disp(Xdestroyed,'exergy destroyed in Btu');
Wrev=integrate('(1-T0/T)*m*Cv','T',T1,T2);
Wrev=round(Wrev);
disp(Wrev,'the reversible work in Btu')
