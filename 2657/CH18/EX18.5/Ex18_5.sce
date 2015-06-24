//Calculations on six cylinder petrol engine
clc,clear
//Given:
n=6 //Number of cylinders
d=7.5,l=9 //Bore and stroke in cm
R_b=38 //Torque arm radius of the brake wheel in cm
P1=324 //Net load when all cylinders operating on brake in N
N=3300 //Engine speed in rpm
P2=245 //Net load when each cylinder is inoperative in N
m_f=.3 //Fuel consumption in kg/min
CV=42000 //Calorific value in kJ/kg
m_w=65 //Mass of cooling water used in kg/min
deltaT_w=12 //Cooling water temperature rise in degreeC
m_a=14 //Mass of air blown in kg/min
T1_a=10+273,T2_a=55+273 //Inlet and outlet temperature of air blown in K
//Solution:
bp=2*%pi*N/60*(P1*R_b/100)*10^-3 //Brake power when all the cylinders operating in kW
bp1=2*%pi*N/60*(P2*R_b/100)*10^-3 //Brake power when each cylinder is inoperative in kW
ip=n*(bp-bp1) //Total ip of the engine in kW
A=%pi/4*d^2*10^-4 //Area of cylinder in m^2
bmep=ip*1000/(n*l/100*A*N/(2*60)) //Brake mean effective pressure in N/m^2
//Heat balance sheet
Q1=m_f*CV //Heat input in kJ/min
Q_bp=bp*60 //Heat equivalent to brake power in kJ/min
cp_w=4.1868 //Specfic heat of water in kJ/kgK
Q_w=m_w*cp_w*deltaT_w //Heat in cooling water in kJ/min
cp_a=1.005 //Specific heat of air in kJ/kgK
Q_a=m_a*cp_a*(T2_a-T1_a) //Heat to ventilating air in kJ/min (Wrong in book)
Q_e=Q1-Q_bp-Q_w-Q_a //Heat to exhaust and other losses in kJ/min
//Results:
printf("\n (a)The indicated mean effective pressure, bmep = %.1f bar",bmep*10^-5)
printf("\n\n   Heat balance sheet\n\t Heat input = %d kJ/min, %d percent",Q1,Q1/Q1*100)
printf("\n\t Heat equivalent to b.p. = %d kJ/min, %.1f percent",Q_bp,Q_bp/Q1*100)
printf("\n\t Heat in cooling water = %d kJ/min, %.1f percent",Q_w,Q_w/Q1*100)
printf("\n\t Heat to ventilating air = %d kJ/min, %.1f percent",Q_a,Q_a/Q1*100)
printf("\n\t Heat to exhaust and other losses = %d kJ/min, %.2f percent",Q_e,Q_e/Q1*100)
//Heat to ventilating air is wrong in book
