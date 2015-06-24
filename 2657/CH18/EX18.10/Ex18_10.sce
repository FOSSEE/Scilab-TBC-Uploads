//Calculations on gas engine
clc,clear
//Given:
d=27,l=45 //Bore and stroke in cm
D_b=1.62 //Effective diameter of the brake wheel in m
t=38.5 //Duration of test in min
N=8080,N1=3230 //Number of revolutions and explosions
P=903 //Net load on brake in N
imep=5.64 //Indicated mean effective pressure in bar
Vg1=7.7 //Gas used in m^3
T1=27+273 //Temperature of the gas in K
deltaP1=135 //Pressure difference of gas above atmospheric pressure in mm of water
Patm=750 //Atmospheric pressure in mm of Hg 
CV=18420 //Calorific value of the gas in kJ/m^3 at N.T.P.
m_w=183 //Mass of cooling water used in kg
deltaT_w=47 //Cooling water temperature rise in degreeC
//Solution:
P1=Patm+deltaP1/13.6 //Gas pressure in mm of Hg
P1=P1/750 //Gas pressure in bar
T2=0+273,P2=1.013 //Normal temperature and pressure (N.T.P.) in K and bar
Vg2=(P1/P2)*(T2/T1)*Vg1 //Gas consumption at N.T.P. in m^3
Q1=Vg2/t*CV //Heat supplied in kJ/min
T=P*D_b/2 //Brake torque delivered in Nm
bp=2*%pi*(N/t*1/60)*(T)*10^-3 //Brake power in kW
bp=round(10*bp)/10
Q_bp=bp*60 //Heat equivalent to brake power in kJ/min
A=%pi/4*d^2*10^-4 //Area of cylinder in m^2
ip=imep*10^2*l/100*A*(N1/t*1/60) //Indicated power in kW
ip=round(10*ip)/10
Q_ip=ip*60 //Heat equivalent to indicated power in kJ/min
fp=ip-bp //Frictional power in kW
Q_fp=fp*60 //Heat equivalent to frictional power in kJ/min
cp=4.1868 //Specfic heat of water in kJ/kgK
Q_w=m_w/t*cp*(deltaT_w) //Heat in cooling water in kJ/min
Q_e=Q1-Q_bp-Q_w //Heat to exhaust, radiation in kJ/min
eta_it=Q_ip/Q1 //Indicated thermal efficiency
eta_bt=Q_bp/Q1 //Brake thermal efficiency
//Results:
printf("\n The indicated thermal efficiency, eta_it = %.1f percent",eta_it*100)
printf("\n The brake thermal efficiency, eta_bt = %.1f percent",eta_bt*100)
printf("\n\n   Heat balance sheet\n\t Heat supplied by the gas = %d kJ/min, %d percent",Q1,Q1/Q1*100)
printf("\n\t Heat equivalent to b.p. = %d kJ/min, %.1f percent",Q_bp,Q_bp/Q1*100)
printf("\n\t Heat in cooling water = %d kJ/min, %.1f percent",Q_w,Q_w/Q1*100)
printf("\n\t Heat to exhaust, radiation = %d kJ/min, %.1f percent",Q_e,Q_e/Q1*100)
