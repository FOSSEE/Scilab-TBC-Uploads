clc;funcprot(0);//EXAMPLE 21.15
// Initialisation of Variables
t1=293;........//Temperature of air entering the turbine in K
rp=9;............//Overall pressure ratio
etac=0.8;........//Efficiency of compressor
t6=898;..........//Reheat remperature
t8=t6;etat=0.85;.......//Efficiency of turbine
etamech=0.95;..........//Mechanical efficiency
etahe=0.8;...............//Heat exchanger thermal efficiency
cpg=1.15;.............//Specific heat capacity for gases in heat exchanger in kJ/kgK
cpa=1.005;............//Specific heat capacity for normal air in kJ/kgK
gag=1.333;.............//Ratio of specific heats for gases in heat exchanger 
ga=1.4;...............//Ratio of specific heats for normal gases
P=4500;.................//Power output of turbine in kW
//Calculations
t2=t1*((sqrt(rp))^((ga-1)/ga));
t21=((t2-t1)/etac)+t1;
wc=cpa*(t21-t1);............//Work input per compressor stage
whp=(2*wc)/etamech;.........//Work output of HP turbine in kJ/kg
t71=t6-(whp/cpg);t7=round(t6-((t6-t71)/etat));
k=(rp/((t6/t7)^((gag)/(gag-1))))^((gag-1)/gag);
k1=((round((k/2)*100))*2)/100;..............//Rounding off upto 2 decimals
t9=t8/(k1);
t91=t8-((t8-t9)*etat);
wout=cpg*(t8-t91)*etamech;..............//Net work output in kJ/kg
t5=etahe*(t91-t21)+t21;
qs=cpg*(t6-t5)+cpg*(t8-t71);...............//Heat supplied
etath=wout/qs;.................//Thermal efficiency
disp(etath*100,"Thermal efficiency in %:")
wgross=whp+(wout/etamech);.........//Gross work output in kJ/kg
wr=wout/wgross;................//Work ratio
disp(wr,"The workk ratio is:")
m1=P/wout;...............//Mass flow in kg/s
disp(m1,"Mass flow in kg/s:")
