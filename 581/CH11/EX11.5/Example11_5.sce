
clear;
clc;

printf("\t Example 11.5\n");
Psat = [0.6113 1.2276 2.3385 4.2461 7.3837 12.35 19.941 31.188 47.39 70.139 101.325];
T = [0.01 10 20 30 40 50 60 70 80 90 100];
i=1;
while i<12
    xw(i)=Psat(i)/101.325;                     //mole fraction of water
    printf("\n %.4f",xw(i));
    mw(i)=(xw(i)*18.02)/(xw(i)*18.02+(1-xw(i))*28.96);//mass fraction of water
    i = i+1;
end
plot(T,mw);
xtitle("Mass fraction of water vapour in air above liquid water surface as a function of surface temperature(1 atm total pressure)","Temperature(degree celsius)","Mass fraction of water vapor");



