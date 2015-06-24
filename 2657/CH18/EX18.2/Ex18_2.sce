//Calculations on Gas engine
clc,clear
//Given:
d=24,l=48 //Bore and stroke in cm
D_b=1.25 //Effective diameter of the brake wheel in m
P=1236 //Net load on brake in N
N=77 //Average engine explosions in min
N1=226.7 //Average speed at output shaft in rpm
imep=7.5 //Indicated mean effective pressure in bar
Vg1=13 //Gas used in m^3/hr
T1=15+273,P1=771 //Temperature and pressure of the gas in K and mm of mercury
T2=0+273,P2=760 //Normal temperature and pressure (N.T.P.) in K and mm of mercury
CV=22000 //Calorific value of the gas in kJ/m^3
m_w=625 //Mass of cooling water used in kg/hr
T1_w=25+273,T2_w=60+273 //Inlet and outlet temperature of cooling water in K
//Solution:
//(a)
T=P*D_b/2 //Brake torque delivered in Nm
bp=2*%pi*N1/60*T //Brake power in W
ip=imep*10^5*l*%pi/4*d^2*N/60*10^-6 //Indicated power in W
eta_m=bp/ip //Mechanical efficiency
//(b)
Vg2=(P1/P2)*(T2/T1)*Vg1 //Gas consumption at N.T.P. in m^3/hr
//(c)
eta_it=ip/1000*3600/(Vg1*CV) //Indicated thermal efficiency
//Heat balance sheet
Q1=Vg2/60*CV //Heat supplied in kJ/min
Q_bp=bp/1000*60 //Heat equivalent to brake power in kJ/min
cp=4.1868 //Specfic heat of water in kJ/kgK
Q_w=m_w/60*cp*(T2_w-T1_w) //Heat in cooling water in kJ/min
Q_r=Q1-Q_bp-Q_w //Heat to exhaust, radiation in kJ/min
//Results:
printf("\n (a)The mechanical efficiency of the engine, eta_m = %.1f percent",eta_m*100)
printf("\n (b)The gas consumption at N.T.P. = %.1f m^3/hr",Vg2)
printf("\n (c)The indicated thermal efficiency, eta_it = %.1f percent",eta_it*100)
printf("\n\n   Heat balance sheet\n\t Heat supplied by the gas = %.1f kJ/min, %d percent",Q1,Q1/Q1*100)
printf("\n\t Heat equivalent to b.p. = %.1f kJ/min, %.1f percent",Q_bp,Q_bp/Q1*100)
printf("\n\t Heat in cooling water = %.1f kJ/min, %.1f percent",Q_w,Q_w/Q1*100)
printf("\n\t Heat to exhaust, radiation = %.1f kJ/min, %.1f percent",Q_r,Q_r/Q1*100)
