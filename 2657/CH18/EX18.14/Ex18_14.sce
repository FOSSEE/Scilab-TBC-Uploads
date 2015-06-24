//Calculations on petrol engine
clc,clear
//Given:
n=6 //Number of cylinders
d=70,l=100 //Bore and stroke in mm
V_c=67 //Clearance volume in cm^2
N=3960 //Engine speed in rpm
m_f=19.5 //Fuel consumption in kg/hr
T=140 //Brake torque delivered in Nm
CV=44000 //Calorific value in kJ/kg
g=1.4 //Specific heat ratio for air (gamma)
//Solution:
bp=2*%pi*N/60*T*10^-3 //Brake power in kW
A=%pi/4*d^2*10^-6 //Area of cylinder in m^2
bmep=bp*1000/(n*l/1000*A*N/(2*60)) //Brake mean effective pressure in Pascal
eta_bt=bp*3600/(m_f*CV) //Brake thermal efficiency
V_s=(%pi/4)*d^2*l/1000 //Swept volume of one cylinder in cm^3
r=(V_s+V_c)/V_c //Compression ratio
eta=1-1/r^(g-1) //Air standard efficiency
eta_r=eta_bt/eta //Relative efficiency
//Results:
printf("\n (a)The brake power, bp = %d kW",bp)
printf("\n (b)The brake mean effective pressure, bmep = %.2f bar",bmep*10^-5)
printf("\n (c)The brake thermal efficiency, eta_bt = %.1f percent",eta_bt*100)
printf("\n (d)The relative efficiency, eta_r = %.1f percent\n\n",eta_r*100)
