clc;clear;
//Example 15.2

//given data
P=100;

//from Table A-1
Mair=29;
MC=12;
MH=2;

//calculations
//Chemical reaction
//C2H6 + 1.2at(1O2 + 3.76) =2CO2 + 3H2O + 0.2athO2 + (1.2*3.76)athN2
//ath is the stoichiometric coefficient for air
//Oxygen balance gives
// 1.2ath = 2 + 1.5 + 0.2ath
ath=(2+1.5)/(1.2-0.2);
AF=(1.2*ath)*4.76*Mair/(2*MC+3*MH);
disp(AF,'air-fuel ratio of combustion process in kg air/kg fuel');
//C2H6 + 4.2(O2 + 3.76N2)  = 2CO2 + 3H2O + 0.7O2 + 15.79N2;
Nprod=2+3+0.7+15.79;
//for dew point water vapour condenses
Nv=3;
Pv=Nv/Nprod*P;
//at this Pv
Tdp=52.3;
disp(Tdp,'the dew-point in C')
