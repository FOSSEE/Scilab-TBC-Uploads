clc;clear;
//Example 13.5

//given data
T1=220;
T2=160;
Pm=10;
yN=0.79;
yO=0.21;//mole fractions of nitrogen and oxygen repesctively
//critical properties
//for Nitrogen
TcrN=126.2;
PcrN=3.39;
//for Oxygen
TcrO=154.8;
PcrO=5.08;

//constants used
Ru=8.314;//in kJ/kg - K

//from Tables A-18 & 19
//at T1
h1N=6391;
h1O=6404;
//for T2
h2N=4648;
h2O=4657;

//calculations
//part - a
qouti=yN*(h1N-h2N)+yO*(h1O-h2O);
qouti=ceil(qouti);
disp(qouti,'the heat transfer during this process using the ideal-gas approximation in kJ/kmol');

//part - b
Tcrm=yN*TcrN+yO*TcrO;
Pcrm=yN*PcrN+yO*PcrO;
Tr1=T1/Tcrm;
Tr2=T2/Tcrm;
Pr=Pm/Pcrm;
//at these values we get
Zh1=1;
Zh2=2.6;
qout=qouti-Ru*Tcrm*(Zh1-Zh2);
qout=ceil(qout);
disp(qout,'the heat transfer during this process using Kay’s rule in kJ/kmol');

//part - c
//for nitrogen
TrN1=T1/TcrN;
TrN2=T2/TcrN;
PrN=Pm/PcrN;
//from Fig A-15b
Zh1n=0.9;
Zh2n=2.4;
//for Oxygen
TrO1=T1/TcrO;
TrO2=T2/TcrO;
PcrO=Pm/PcrO;
//from Fig A-15b
Zh1O=1.3;
Zh2O=4.0;
//from Eq 12-58
h12N=h1N-h2N-Ru*TcrN*(Zh1n-Zh2n);// h1 - h2 for nitrogen
h12O=h1O-h2O-Ru*TcrO*(Zh1O-Zh2O);// h1 - h2 for oxygen
qout=yN*h12N+yO*h12O;
qout=ceil(qout);
disp(qout,'the heat transfer during this process using Amagat’s law in kJ/kmol');
