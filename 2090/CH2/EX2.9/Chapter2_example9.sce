clc
clear
//Input data
r=12;//Compression ratio
B=1.615;//Cut off ratio
p3=52.17;//Maximum pressure in bar
p4=p3;//Maximum pressure in bar
p1=1;//Initial pressure in bar
T1=(62+273);//Initial temperature in K
n=1.35;//Indices of compression and expansion
g=1.4;//Adiabatic exponent
mR=0.287;//Real gas constant in kJ/kgK
Cv=0.718;//specific heat at constant volume for air in kJ/kgK
Cp=1.005;//specific heat at constant pressure for air in kJ/kgK

//Calculations
T2=T1*r^(n-1);//The temperature at point 2 in K
p2=p1*(r)^n;//The pressure at point 2 in bar
T3=T2*(p3/p2);//The temperature at point 3 in K
T4=T3*B;//The temperature at point 4 in K
T5=T4*(B/r)^(n-1);//The temperature at point 5 in K
Q12=[(g-n)/(g-1)]*mR*[(T1-T2)/(n-1)];//Heat transfer during the process 1-2 for unit mass in kJ/kg
Q23=Cv*(T3-T2);//Heat transfer during the process 2-3 for unit mass in kJ/kg
Q34=Cp*(T4-T3);//Heat transfer during the process 3-4 for unit mass in kJ/kg
Q45=((g-n)/(g-1))*mR*((T4-T5)/(n-1));//Heat transfer during the process 4-5 for unit mass in kJ/kg
Q51=Cv*(T1-T5);//Heat transfer during the process 5-1 for unit mass in kJ/kg
Q1=Q23+Q34+Q45;//Heat supplied in kJ/kg
Q2=-Q12+(-Q51);//Heat rejected in kJ/kg
W=Q1-Q2;//Work done in kJ/kg
E=[W/Q1]*100;//Efficiency in percentage
Vs=[(mR*T1)/p1]*(r-1)/r;//Swept volume for unit mass in m^3/kg
pm=[W*1000/Vs]/10^3;//Mean effective pressure in bar

//Output
printf(' (a)The temperature at cardinal points ,\n     T2 = %3.0f K\n     T3 = %3.0f K \n     T4 = %3.0f K \n     T5 = %3.0f K \n (b) The cycle efficiency = %3.1f percent \n (c) The mean effective pressure of the cycle = %3.3f bar ',T2,T3,T4,T5,E,pm)
