clc
clear
//Input data
r=14//Compression ratio
c=5//Cut off takes place at 5% of the stroke
p1=1//Pressure at the beginning of compression in kg/cm^2. In texbook, it is given wrong as 10
T1=90+273//Temperature at the beginning of compression in K
p3=50//Maximum pressure in kg/cm^2
R=29.3//Characteristic gas constant in mkg/kg/degree C
cv=[0.171,0.00003]//Cv=0.171+0.00003T where Cv is Specific heat at constant volume and T is the temperature in K
g1=1.4//Ratio of specific heats
J=427//Mechanical equivalent of heat in kg.m/kcal

//Calculations
T2x=(T1*r^(g1-1))//Temperature in K
function y=f1(T),y=cv(1)+(cv(2)*T),endfunction
I1=intg(T1,T2x,f1)
Cv=(1/(T2x-T1))*I1//Mean value of Cv in kJ/kg.K
Cp=(Cv+(R/J))//Mean value of Cp in kJ/kg.K
g=1.35//(Cp/Cv) value and rounded off to 2 decimal places for calculation purpose. Ratio of specific heats
T2=(T1*r^(g-1))//Temperature in K
I2=intg(T1,T2,f1)
CV=(1/(T2-T1))*I2//Maen value of Cv in kJ/kg.K
CP=(Cv+(R/J))//Mean value of Cp in kJ/kg.K
g2=1.36//(Cp/Cv) value and rounded off to 2 decimal places for calculation purpose.Ratio of specific heats
T2a=(T1*r^(g2-1))//Temperature in K
p2=(p1*r*(T2a/T1))//Pressure in kg/cm^2
T3=(T2a*(p3/p2))//Temperature in K
T4=(((r-1)*(c/100))+1)*T3//Temperature in K
g3=1.3//Assuming gamma as 1.3 for process 4-5
T5=(T4/(r/(((r-1)*(c/100))+1))^(g3-1))//Temperature in K
cV=cv(1)+(cv(2)/2)*(T5+T4)//Mean value of Cv in kJ/kg.K
cP=cV+(R/J)//Mean value of Cp in kJ/kg.K
g4=(cP/cV)//Ratio of specific heats
T5a=(T4/(r/(((r-1)*(c/100))+1))^(g4-1))
I3=intg(T2a,T3,f1)
function y=f2(T),y=cv(1)+(R/J)+(cv(2)*T),endfunction
I4=intg(T3,T4,f2)//Textbook answer is wrong
q=I3+I4//Heat supplied per kg of working substance in kcal/kg

//Output
printf('(a) Temperatures at all the points of the cycle are: \n T1 = %i K \n T2 = %3.0f K \n T3 = %3.0f K \n T4 = %3.0f K \n T5 = %i K \n\n (b) heat supplied per kg of the working substance is %3.1f kcal/kg',T1,T2a,T3,T4,T5a,q)
//Textbook answer is wrong
