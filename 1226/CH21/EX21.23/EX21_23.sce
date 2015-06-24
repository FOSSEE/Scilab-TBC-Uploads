clc;funcprot(0);//EXAMPLE 21.23
// Initialisation of Variables
al=9000;..........//Altitude in m
Ca=215;...........//Speed of aircraft in m/s
TP=750;.............//Thrust power developed in kW
p1=0.32;...........//Inlet pressure of air in bar
t1=231;.............//Inlet temperature of air in K
t3=963;.............//Temperature of gases leaving the combustion chamber in K
rpc=5.2;............//Pressure ratio
C=42500;..........//Calorific value of fuel in kJ/kg
C41=195;.........//Velocity in ducts
etac=0.86;..........//Compressor efficiency
ga=1.4;............//Ratio of specific heats for air
gag=1.33;............//Ratio of specific heats for gases
etat=0.86;..........//Turbine efficiency
etajt=0.9;..........//Jet tube efficiency
cp=1.005;............//Specific heat at constant pressure in kJ/kgK for air
cpg=1.087;............//Specific heat at constant pressure in kJ/kgK for gases
R=0.29;..................//Gas constant for exhaust gases in kJ/kgK
//Calculations
t2=t1*(rpc^((ga-1)/ga));
t21=t1+((t2-t1)/etac);
mf=(cpg*(t3-t21))/(C-(cpg*(t3-t21)));
afr=1/mf;..........//Air fuel ratio
t41=round(t3-((cp*(t21-t1))/(cpg*(1+mf))));
t4=t3-((t3-t41)/etat);p4=rpc;
rpt=(t3/t4)^(gag/(gag-1));.............//Expansion pressure ratio in turbine
rpj=p4/rpt;....................//Expansion pressure ratio in jet tube
t5=t41/(rpj^((gag-1)/gag));
Cj=sqrt(etajt*2*((cpg*1000*(t41-t5))+((C41*C41)/2)));
etao=((((1+mf)*Cj)-Ca)*Ca)/(1000*mf*C);......//Overall efficiency
disp(etao*100,"Overall efficiency in %:")
ma=(TP*1000)/((((1+mf)*Cj)-Ca)*Ca);........//Rate of air consumption in kg/s
disp(ma,"Rate of air consumption in kg/s:")
P=ma*(1+mf)*cpg*(t3-t41);..............//Power developed by the turbine in kW
disp(P,"Power developed by turbine in kW:")
t51=t41-(((Cj^2)-(C41^2))/(2*1000*cpg));
rhoe=(p1*10^5)/(R*1000*t51);..........//Density of exhaust gases
Ajt=(ma*(1+mf))/(Cj*rhoe);.......//Discharge of jet area in m^2
disp(Ajt,"The outlet area of jet tube in m^2:")
sfc=(mf*ma*3600)/(1000*(TP/Ca));..........//Specific fuel consumption in kg/thrust-hour
disp(sfc,"Specific fuel consumption in kg per kg of thrust:")
