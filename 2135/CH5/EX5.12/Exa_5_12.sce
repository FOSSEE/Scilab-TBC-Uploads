//Exa 5.12
clc;
clear;
close;
format('v',7);

//Given Data :
Tg1=1127+273;//Kelvin
Tg2=527+273;//Kelvin
T2=250+273;//Kelvin
T0=27+273;//Kelvin
Cpg=1;//KJ/KgK
mw=5;//Kg/s
hfg=1716.2;//KJ/Kg
//mg*Cpg*(Tg1-Tg2)=mw*hfg
mg=mw*hfg/Cpg/(Tg1-Tg2);//Kg/s
disp(mg,"Mass flow rate of gases in Kg/s : ");
deltaSg=mg*Cpg*log(Tg2/Tg1);//KJ/sK
disp(deltaSg,"Entropy change of gases in KJ/sK : ");
deltaSw=mw*hfg/T2;//KJ/sK
disp(deltaSw,"Entropy change of water in KJ/sK : ");
deltaSnet=deltaSg+deltaSw;//KJ/sK
disp(deltaSnet,"Net Entropy change in KJ/sK : ");
Q1=mw*hfg;//KJ/s
Sa_sub_Sb=-deltaSg;//KJ/sK
A1=Q1-T0*(Sa_sub_Sb);//KJ/s
disp(A1,"Availability of hot gases in KJ/s : ");
A2=Q1-T0*deltaSw;//KJ/s
disp(A2,"Availability of water in KJ/s : ");
UA1=T0*(Sa_sub_Sb);//KJ/s
disp(UA1,"Unavailable energy of hot gases in KJ/s : ");
UA2=T0*deltaSw;//KJ/s
disp(UA2,"Unavailable energy of water in KJ/s : ");
E_increase=T0*deltaSnet;//KJ/s
disp(E_increase,"Increase in unavailable energy in KJ/s : ");
