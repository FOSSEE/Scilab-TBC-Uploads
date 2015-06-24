clc;clear;
//Example 11.1

//given values
P1=0.14;
P2=0.8;
m=0.05;

//from refrigerant-134a tables
h1=239.16;
s1=0.94456;
h2=275.39;
h3=95.47;

//calculation
s2=s1;//isentropic process 
h4=h3;//throttling
QL=(h1-h4)*m;
Wm=m*(h2-h1);
Qh=m*(h2-h3);
Qh=ceil(Qh);
COPR=QL/Wm;
disp(QL,'the rate of heat removal from the refrigerated space in kW');
disp(Wm,'the power input to the compressor in kW');
disp(Qh,'the rate of heat rejection to the environment in kW');
disp(COPR,'the COP of the refrigerator');
