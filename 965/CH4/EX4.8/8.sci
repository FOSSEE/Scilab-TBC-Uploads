clc;
clear all;
disp("sphere exposed to airflow ")
R=15/2000;//m radius of steel sphere
ti=550;// degree C
t=90;// degree C
ta=20;// degree C
k=42;// W/m.C
h=120;// W/m^2.C
a=0.045;//m^2/h
Lc=R/3;//m
rho=7850;// kg/m^3
c=475;// J/kg.C
As=4*3.1416*R^2;
V=4*3.1416*(R^3)/3;
Bi=h*Lc/k;
disp(Bi,"Bi =")
//Fo=a*tau/Lc^2;
//(t-ta)/(ti-ta)=exp(Bi*Fo))
X=-log((t-ta)/(ti-ta))
Fo=X/Bi;
disp(Fo,"Fo =")
tau=Fo*Lc*Lc/(a/3600);
disp("s",tau,"time required tau =")
Fo=7200*0.0333;
Qi=-h*As*(ti-ta)*(exp(-1*Bi*Fo));
disp("W",Qi,"Instantaneous heat transfer rate 2 minutes after the start of cooling  Qi =")
Q = rho*V*c*(ti-ta)*((exp(-Bi*Fo))-1);
disp("W",Q,"Total heat energy transfer from sphere during firsh 2 minutes Q =")
