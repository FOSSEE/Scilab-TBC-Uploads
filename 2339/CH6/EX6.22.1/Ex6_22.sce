clc
clear

T1=87+273;      //in K
r=14;       //Compression Ratio
T3=1795+273;        //in K
T4=677+273;     //in K
G=1.4;
T2=T1*(r^(G-1));
printf('T2= %2.1f K',T2);
printf('\n');

Cp=1.005;
Cv=0.718;
W=[Cp*(T3-T2)]-[Cv*(T4-T1)];
Qs=Cp*(T3-T2);
Eff=(W*100)/Qs;
printf('Efficiency: %2.1f Percent',Eff);
printf('\n');
