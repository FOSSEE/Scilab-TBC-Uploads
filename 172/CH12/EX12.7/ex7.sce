//ques7
//the otto cycle
clear
clc
//1-compressor inlet
//2-compressor exit
P1=100;//kPa
T1=288.2;//K
R=0.287;//gas constant
v1=R*T1/P1;//specific volume at inlet in m^3/kg
rv=10;//compression ratio given
k=1.4;//constant
T2=T1*rv^(k-1);//K
printf('Temperature at compressor exit, T2 = %.1f K \n',T2);
P2=P1*rv^k;//kPa
printf(' Pressure at compressor exit, P2 = %.3f MPa \n ',P2/1000); 
v2=v1/rv;//specific heat at exit in m^3/kg
//23-heat addition process
//q23=Cv*(T3-T2)=1800 kJ/kg given
q23=1800;//kJ/kg heat addition, given
Cv=0.717;//specific heat at constant volume in kJ/kg
T3=T2+q23/Cv;//K
printf('\n Initial Temperature during heat additon process, T3 = %.0f K \n',T3);
P3=P2*(T3/T2);//kPa
printf( ' Initial pressure during heat addition process, P3 = %.3f MPa \n',P3/1000);
r=10;//k=V4/V3=P3/P4
T4=T3*(1/r)^(k-1);
printf(' \n Final temperature during heat addition process, T4 = %.1f K \n',T4);
P4=P3/r^k;//kPa
printf(' Final pressure during heat addition process, P4 = %.4f MPa \n',P4/1000);
nth=1-1/r^k;//thermal efficiency
printf('\n Thermal efficiency = %.1f percent \n',nth*100);
q41=Cv*(T1-T4);///heat for process 4-1 in kJ/kg
wnet=q23+q41;
mep=wnet/(v1-v2);//effective mean pressure n kPa
printf('\n Mean effective pressure = %.0f kPa \n',mep);