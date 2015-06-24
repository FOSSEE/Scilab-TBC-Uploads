clc
clear

T3=1000+273;        //in K
T1=27+273;          //in K
G=1.25;

r=(T3/T1)^G;
printf('Compression Ratio: %2.1f ',r);
printf('\n');

T2=sqrt(T1*T3);
T4=T2;
printf('T2=T4= %2.0f K',T2);
printf('\n');

Cv=0.718;
W=Cv*[(sqrt(T3))-(sqrt(T1))]^2;
printf('Maximum Work Done: %2.0f kJ/kg',W);
printf('\n');
