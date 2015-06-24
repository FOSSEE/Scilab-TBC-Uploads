//Chapter-11 example 40
//=============================================================================
clc;
clear;
//Given data
F  = 9.5*10^9;       //radar operating frequency in Hz
Vo = 3*10^8;        //vel in m/s;
G  = 20;            //antenna gain in dBi;
R  = 50*10^3;       //distance of radar reflected signal from target
Pt = 10*10^3        //Tx power in watts
CS = 10;            //cross sectional area in m^2

// Calculations
Gain  = 10^(G/10)   //G = 10log(Gain) ==>gain - antilog(20/10);
Gr    = Gain;       //gain of tx antenna and Rx antenna
Gt    = Gain
lamda = Vo/F
Pr= (lamda*lamda*Pt*Gt*Gr*CS)/((4*4*4*%pi*%pi*%pi)*(R^4))//received power in watts

// Output
mprintf('Received signal Power is %g Watts',Pr);
//=============================================================================



