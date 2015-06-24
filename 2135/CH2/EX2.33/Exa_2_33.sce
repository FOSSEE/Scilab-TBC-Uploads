//Exa 2.33
clc;
clear;
close;
format('v',7);

//Given Data : 
p1=10^5;//Pa
p2=5*10^5;//Pa
T1=25+273;//K
V1=1.8;//m^3/Kg
V2=p1/p2*V1;//m^3/Kg
W=-p1*V1*log(p2/p1);//J/kg
W=W/1000;//KJ/Kg
disp(W,"Workdone in KJ : ");
deltaU=0;//As in a isothermal process T2-T1 =0 
disp(deltaU,"Change in internal energy in KJ : ");
Q=-W;//KJ/Kg(As in a isothermal process T2-T1 =0 )
disp(Q,"Heat Transfered in KJ/Kg : ");
