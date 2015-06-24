//Supercharged four stroke oil engine
clc,clear
//Given:
T1=20+273 //Temperature of air enters the compressor in K
Q1=1340 //Heat added to air in kJ/min
T3=60+273 //Temperature of air leaves the cooler or enters the engine in K
P3=1.72 //Pressure of air leaves the cooler or enters the engine in bar
eta_v=0.70 //Volumetric efficiency of engine
n=6 //Number of cylinders
d=90,l=100 //Bore and stroke of cylinder in mm
N=2000 //Engine speed in rpm
T=147 //Output brake torque in Nm
eta_m=0.75 //Mechanical efficiency
//Solution:
bp=2*%pi*N/60*T*10^-3 //Brake power in kW
ip=bp/eta_m //Indicated power in kW
ip=ip/n //Indicated power per cylinder in kW
A=(%pi/4)*d^2*1D-6 //Area of cylinder in m^2
l=l*1D-3 //Stroke of cylinder in m
imep=ip/(l*A*N/(2*60)) //Indicated mean effective pressure in kN/m^2
imep=imep/100 //Indicated mean effective pressure in bar
V_s=n*A*l*N/2 //Engine swept volume in m^3/min
Vi=V_s*eta_v //Induced volume of air in m^3/min
R=0.287 //Specific gas constant in kJ/kgK
cp=1.005 //Specific heat in kJ/kgK
m_e=P3*100*Vi/(R*T3) //Mass of air induced into the engine in kg/min
Q1=1340/60 //Heat added to air in kW
m_c=1 //Assume for calculation
function y=f(T2)
    W_c=m_c*cp*(T2-T1) //Work done on air in compressor kW
    Q_c=m_c*cp*(T2-T3) //Heat given to the air passes through the cooler in kW
    y=W_c/Q_c-bp/Q1
endfunction
T2=fsolve(500,f) //Temperature of air leaving the compressor in K
m_c=bp*60/(cp*(T2-T1)) //Mass of air flow into the compressor in kg/min
//Results:
printf("\n (a)The engine indicated mean effective pressure, imep = %.2f bar",imep)
printf("\n (b)The air consumption in the engine, m_e = %.2f kg/min",m_e)
printf("\n (c)The air flow into the compressor, m_c = %.2f kg/min\n\n",m_c)
