//Exa 9.1
clc;
clear;
close;
//given data :
HT=50;//in meter
HR=10;//in meter
f=60;//in MHz
P=10;//in KW
D=10;//in Km
D=D*10^3;//in m
c=3*10^8;//speed of light in m/s
lambda=c/(f*10^6);//in meter
//Part (i) 
d=3.55*(sqrt(HT)+sqrt(HR));//in Km
disp(d,"Maximum line of sight range in Km : ");
//Part (ii)
Et=88*sqrt(P*1000)*HT*HR/(lambda*D^2)
disp(Et,"The field strength at 10 Km in V/m: ");
//Part (iii)
//Formula : Et=88*sqrt(p)*HT*HR/(lambda*D^2)
Et=1;//in mV/m
D=sqrt(88*sqrt(P*1000)*HT*HR/(lambda*Et*10^-3));//in m
disp(D/1000,"Distance in Km : ");