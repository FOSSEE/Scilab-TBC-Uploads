clc;clear;
//Example 17.15

//given data
P1=480;
T1=550;
V1=80;
d1=15/100;//diameter in m
AF=40;//air to fuel ratio
HV=40000;//heating value in kJ/kg

//from Table A-2a
R=0.287;//in kJ/kg-K
cp=1.005;//in kJ/kg-K
k=1.4;

//calculations
p1=P1/(R*T1);
A1=%pi*d1^2/4;
mair=p1*A1*V1;
mfuel=mair/AF;
Q=mfuel*HV;
q=Q/mair;
T01=T1+V1^2/(2*cp);
c1=sqrt(k*R*T1*1000);//factor of 1000 to convert kJ to J
Ma1=V1/c1;
//exit stagnation energy equation q= Cp (T02 - T01)
T02=T01+q/cp;
//from Table A–34
//at Ma1
//s stands for * symbol
T0s=0.1291;//T0/Ts
Ts0=T01/T0s;
T2s=T02/Ts0;//T02/T*0
//from Table A–34 at this ratio
Ma2=0.3142;
//Rayleigh flow relations corresponding to the inlet and exit Mach no
//at Ma1
T1s=0.1541;//T1/Ts
P1s=2.3065;//P1/Ps
V1s=0.0668;//V1/Vs
//at Ma2
T2s=0.4389;//T2/Ts
P2s=2.1086;//P2/Ps
V2s=0.2082;//V2/Vs
T2=T2s/T1s*T1;
T2=floor(T2);
P2=P2s/P1s*P1;
P2=ceil(P2);
V2=V2s/V1s*V1;
V2=floor(V2);    
disp(Ma2,'Mach Number at exit');
disp(T2,'Temperature in K');
disp(P2,'Pressure in kPa');
disp(V2,'Velocity in m/s')
