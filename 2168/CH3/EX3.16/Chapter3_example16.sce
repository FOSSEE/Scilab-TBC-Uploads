clc
clear
//Input data
p1=1//Pressure of air intake in kg/cm^2
T1=50+273//Temperature of air intake in K
v=(1/14)//Volume compresses by it adiabatically of its original volume
x=2//During the first stage, the pressure increases at constant volume to twice the pressure of the adiabatc compression, and during the second stage the volume is increased twice the clearance volume at constant pressure
r=(1/v)//Compression ratio
Cp=0.237//Specific heat at constant pressure in kJ/kg.K
Cv=0.169//Specific heat at constant volume in kJ/kg.K
g=1.4//Ratio of specific heats for air

//Calculations
T2=T1*r^(g-1)//Temperature at the end of compression in K
p2=(p1*r^g)//Pressure at the end of compression in kg/cm^2
p3=x*p2//Pressure at the end of the heat addition at constant volume in kg/cm^2
T3=T2*(p3/p2)//Temperature at the end of constant volume heat addition in K
T4=(T3*x)//Temperature at the end of constant pressure heat supply in K
T5=T4/(r/x)^(g-1)//Temperature at the end of expansion in K
qs=(Cv*(T3-T2))+(Cp*(T4-T3))//Heat supplied in kcal/kg of air
qre=(Cv*(T5-T1))//Heat rejected in kcal/kg of air
na=((qs-qre)/qs)*100//Air standard efficiency in percent
T=[T1-273,T2-273,T3-273,T4-273,T5-273]//Temperature at the five key points in degree C

//Output
printf('(a) The temperature at the five key points of the cycle are : \n point 1 is %3.0f K = %3.0f degree C \n point 2 is %3.0f K = %3.0f degree C \n point 3 is %3.0f K = %3.0f degree C \n point 4 is %3.0f K = %3.0f degree C \n point 5 is %3.0f K = %3.0f degree C \n\n (b) The ideal thermal efficiency of the cycle is %3.2f percent',T1,T(1),T2,T(2),T3,T(3),T4,T(4),T5,T(5),na)

