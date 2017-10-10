clc;
Hfe=200;
re=22.7;
R1=10000;
R2=2200;
Req=(R1*R2)/(R1+R2);
X1=Hfe*re;
ZinBJT=(Req*X1)/(Req+X1);
ZinJFET=(R1*R2)/(R1+R2);
disp('kOhm',ZinBJT/1000,"ZinBJT=")//The answers vary due to round off error
disp('kOhm',ZinJFET/1000,"ZinJFET=")//The answers vary due to round off error

