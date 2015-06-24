clc;clear;
//Example 9.3

//given data
V1=117;
T1=80+460;//in R
P1=14.7;
r=18;
rc=2;

//constants used
R=0.3704;//in psia ft^3/lbm R
cp=0.240;//in Btu/lbm R
cv=0.171;//in Btu/lbm R

//from Table A-2Ea
k=1.4;

//calculations
V2=V1/r;
V3=rc*V2;
V4=V1;
//Process 1-2
T2=T1*(V1/V2)^(k-1);
P2=P1*(V1/V2)^k;
T2=round(T2);
P2=round(P2);
disp('Process 1-2');
disp(T2,'temperature in R');
disp(P2,'pressure in psia');
//Process 2-3
P3=P2;
T3=T2*(V3/V2);
T3=round(T3);
P3=round(P3);
disp('Process 2-3');
disp(T3,'temperature in R');
disp(P3,'pressure in psia');
//Process 3-4
T4=T3*(V3/V4)^(k-1);
P4=P3*(V3/V4)^k;
T4=round(T4);
P4=round(P4);
disp('Process 3-4');
disp(T4,'temperature in R');
disp(P4,'pressure in psia');
m=P1*V1/(R*T1)/1728;//factor of 1728 to covert to ft^3 from in^3
Qin=m*cp*(T3-T2);
Qout=m*cv*(T4-T1);
Wnet=Qin-Qout ;
disp(Wnet,'work output in Btu');
nth=Wnet/Qin;
disp(nth,'thermal efficiency');
MEP=Wnet/(V1-V2)*778.17*12;//factor of 778.17 and 12 to convert to lbf ft and in from Btu and ft respectively
MEP=round(MEP);
disp(MEP,'mean effective pressure in psia')
