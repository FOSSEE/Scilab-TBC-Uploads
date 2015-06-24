clc;clear;
//Example 7.16

//given data
P1=200;
T1=950;
P2=80;
nN=0.92;

//from Table A-2b
cp=1.099;
k=1.354;

//calculations
T2s=T1*(P2/P1)^((k-1)/k);
//ein = eout
V2s=sqrt(2*cp*(T1-T2s)*1000);//factor of 1000 for conversion to m^2/s^2
disp(floor(V2s),'maximum possible exit velocity in m/s');
T2a=T1-nN*(T1-T2s);
disp(round(T2a),'exit temperature in K');
V2a=sqrt(nN*V2s^2);
disp(floor(V2a),'actual exit velocity in m/s')
