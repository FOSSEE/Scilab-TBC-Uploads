//Calculations on four stroke engine
clc,clear
//Given:
d=150,l=250 //Bore and stroke in mm
Li=50 //Length of indicator diagram in mm
Ai=450 //Area of indicator diagram in mm^2
ISR=1.2 //Indicator spring rating in mm
N=420 //Engine speed in rpm
T=217 //Brake torque delivered in Nm
m_f=2.95 //Fuel consumption in kg/hr
CV=44000 //Calorific value in kJ/kg
m_w=0.068 //Mass of cooling water used in kg/s
deltaT_w=45 //Cooling water temperature rise in K
cp=4.1868 //Specfic heat capacity of water in kJ/kgK
//Solution:
Hi_av=Ai/Li //Mean height of indicator diagram in mm
imep=Hi_av/ISR //Mean effective pressure in bar
ip=imep*100*%pi/4*d^2*l*N/(2*60)*10^-9 //Indicated power in kW (Error in book)
bp=2*%pi*(N/60)*(T)*10^-3 //Brake power in kW
eta_m=bp/ip //Mechanical efficiency (Error in book)
eta_bt=bp*3600/(m_f*CV) //Brake thermal efficiency
bsfc=m_f/bp //Brake specific fuel consumption in kg/kWh (Error in book)
//Energy balance
Power_f=m_f/3600*CV //Power in fuel in kW
Power_w=m_w*cp*deltaT_w //Power to cooling water in kW
Power_e=Power_f-bp-Power_w //Power to exhaust, radiation in kW
//Results:
printf("\n The mechanical efficiency, eta_m = %d percent",eta_m*100)
printf("\n The brake thermal efficiency, eta_bt = %.1f percent",eta_bt*100)
printf("\n The specific fuel consumption, bsfc = %.3f kg/kWh",bsfc)
printf("\n\n   Energy balance\n\t Power in fuel = %.1f kW, %d percent",Power_f,Power_f/Power_f*100)
printf("\n\t Brake power = %.2f kW, %.1f percent",bp,bp/Power_f*100)
printf("\n\t Power to cooling water = %.1f kW, %.1f percent",Power_w,Power_w/Power_f*100)
printf("\n\t Power to exhaust, radiation = %.1f kW, %.1f percent",Power_e,Power_e/Power_f*100)
//Answers in the book are wrong
