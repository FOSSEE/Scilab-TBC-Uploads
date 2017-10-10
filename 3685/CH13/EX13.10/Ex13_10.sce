clc
//Given that
v = 300 // Aircraft velocity in m/s
p1 = 0.35 // Pressure in bar
t1 = -40 // Temperature in degree centigrade
rp = 10 // The pressure ratio of compressor 
t4 = 1100 // Temperature of gases at turbine intlet in degree centigrade
ma = 50 // Mass flow rate of air at the inlet of compressor in kg/s
cp = 1.005 // Heat capacity of air at constant pressure in kJ/kg-K
gama=1.4 // Ratio of heat capacities for air
printf("\n Example 13.10 \n")
T1 = t1+273
T4 = t4+273
T2 = T1 + (v^2)/(2*cp)*(10^-3)
p2 = p1*(100)*((T2/T1)^(gama/(gama-1)))
p3 = rp*p2
p4 =p3
T3 = T2*((p3/p2)^((gama-1)/gama))
T5 = T4-T3+T2
p5 = ((T5/T4)^(gama/(gama-1)))*(p4)
p6 = p1*100
T6 = T5*((p6/p5)^((gama-1)/gama))
V6 = (2*cp*(T5-T6)*1000)^(1/2)
Wp = ma*(V6-v)*v*(10^-6)
Q1 = ma*cp*(T4-T3)*(10^-3)
np = Wp/Q1
printf("\n The temperature of the gases at the turbine exit is %f K,\n The pressure of the gases at the turbine exit is %f kN/m^2,\n The velocity of gases at the nozzle exit is %f m/sec,\n The propulsive efficiency of the cycle is %f percent",T5,p5,V6,np*100)
//The answers vary due to round off error

