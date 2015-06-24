clc;funcprot(0);//EXAMPLE 21.18
// Initialisation of Variables
t1=293;............//Temperature of inlet air into low pressure compressor in K
p1=1.1;.........//Pressure of inlet air into low pressure compressor in bar
p2=3.3;..........//Pressure of air in the low pressure compressor in bar
t3=300;.............//Intercooled temperature in K
pli=0.15;..........//Loss in pressure due to intercooling in bar
p3=p2-pli;...........//Pressure after intercooling in bar
p4=9.45;............//Pressure of air after high pressure compressor in bar
p6=p4;t6=973;.........//Temperature of gases supplied to high pressure turbine in K
t8=943;.........//Reheat temperature in K
plr=0.12;...........//Loss of pressure after reheating in bar
p7=3.62;............//Pressure of gases at the end of expansion in high pressure turbine in bar
p8=p7-plr;...........//Pressure of outlet gases in bar
ga=1.4;...........//Ratio of specific heats for air
gag=1.33;..........//Ratio of specific heats for gases
cpa=1.005;...........//Specific heat at constant pressure in kJ/kgK for air
cpg=1.15;.........//Specific heat at constant pressure in kJ/kgK for gases
etac=0.82;........//Compressor efficiency
etat=0.85;..........//Turbine efficiency
etaht=0.65;.........//Efficiency of heat exchanger
P=6000;..................//Power generated in kW
p9=p1;
//Calculations
t2=round(t1*((p2/p1)^((ga-1)/ga)));
t21=round(((t2-t1)/etac)+t1);
t4=round(t3*((p4/p3)^((ga-1)/ga)));
t41=round(((t4-t3)/etac)+t3);
t7=round(t6/((p6/p7)^((gag-1)/gag)));
t71=round(t6-(etat*(t6-t7)));
t9=round(t8/((p8/p9)^((gag-1)/gag)));
t91=round(t8-(etat*(t8-t9)));
t5=round(etaht*(t91-t41)+t41);
wthp=cpg*(t6-t71);.......//Work done by high pressure turbine in kJ/kg of gas
wtlp=cpg*(t8-t9);.......//Work done by low pressure turbine in kJ/kg of gas
wchp=cpg*(t21-t1);.......//Work done by high pressure compressor in kJ/kg of gas
wclp=cpg*(t41-t3);.......//Work done by low pressure compressor in kJ/kg of gas
qs=cpg*(t6-t5+t8-t71);.........//Heat supplied in kJ/kg of gas
etath=(wthp+wtlp-wchp-wclp)/qs;..//Overall efficiency
disp(etath*100,"Overall efficiency (in %):")
wr=(wthp+wtlp-wchp-wclp)/(wthp+wtlp);......//Work ratio
disp(wr,"Work ratio :")
m=P/(wthp+wtlp-wchp-wclp);.....//Mass flow rate
disp(m,"Mass flow rate in kg/s:")
