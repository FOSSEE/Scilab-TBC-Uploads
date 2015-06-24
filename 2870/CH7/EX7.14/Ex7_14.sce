clc;clear;
//Example 7.14

//given data
P1=3000;// in kPa
T1=400;
P2=50;
T2=100;
Wout=2000;//in kW

//from Table A-6
//at P1
h1=3231.7;
s1=6.9235;
//at 2a
h2a=2682.4;
//from Table A-6
//at 2s
s2s=s1;
sf=1.0912;
sg=7.5937;
hf=340.54;
hfg=2304.7
x2s=(s2s-sf)/(sg-sf);
h2s=hf+x2s*hfg;
nT=(h1-h2a)/(h1-h2s);
disp(nT,'isentropic efficiency is')
//Ein = Eout
m=Wout/(h1-h2a);
disp(m,'mass flow rate in kg/s')
