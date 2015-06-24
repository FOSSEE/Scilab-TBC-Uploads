clc
clear
//Input data
g=1.4//Ratio of specific heats
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
m=20.5//Air flow rate in kg/sec
p=[5.85,1.03,1.03,5.85]//Inlet and outlet pressure of turbine and compressor respectively in kg/cm^2
T=[20+273,250+273,600+273,360+273]//Inlet and outlet temperatures of turbine and compressor respectively in degree C. In textbook instead of 360 degree C, 375 degree C is given

//Calculations
T2=(T(1)*(p(4)/p(3))^((g-1)/g))//Temperature at the outlet of compressor in ideal cycle in K
T4=(T(3)/(p(1)/p(2))^((g-1)/g))//Temperature at the outlet of turbine in ideal cycle in K 
ic=((T2-T(1))/(T(2)-T(1)))*100//Isentropic efficiency of compressor in percent
it=((T(3)-T(4))/(T(3)-T4))*100//Isentropic efficiency of turbine in percent
Wc=(Cp*(T(2)-T(1)))//Workdone in compressor in kcal/kg of air
Wt=(Cp*(T(3)-T(4)))//Workdone in turbine in kcal/kg of air
N=(Wt-Wc)//Net workdone in kcal/kg of air
P=(N*427*m)/75//Power output in H.P

//Output
printf('The net output is %3.0f H.P',P)
