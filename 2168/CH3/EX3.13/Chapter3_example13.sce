clc
clear
//Input data
x=[2/3,1/3]//The dual cycle atkes two-thirds of its total heat supply at constant volume and one-third at constant pressure
r=13//Compression ratio
p3=43//Maximum pressure of the cycle in kg/cm^2
p1=1//Pressure at intake in kg/cm^2
T1=15+273//Intake temperature in K
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
Cv=0.17//Specific heat at constant volume in kJ/kg.K
g=1.41//Ratio of specific heats

//Calculations
T2=T1*r^(g-1)//Temperature at the end of compression in K
p2=(p1*r^g)//Pressure at the end of compression in kg/cm^2
T3=T2*p3/p2//Temperature at the end of constant volume heat addition in K
q23=Cv*(T3-T2)//Heat added at constant volume in kcal/kg
q34=(1/2)*q23//Heat added at constant pressure in kcal/kg
T4=(q34/Cp)+T3//Temperature at the end of constant pressure heat supply in K
T5=(T4*((p1*(T4/T3))/r)^(g-1))//Temperature at the end of expansion in K
na=(1-((Cv*(T5-T1))/((Cv*(T3-T2))+(Cp*(T4-T3)))))*100//Efficiency in percent
T=[T1-273,T2-273,T3-273,T4-273,T5-273]//Temperature at the five cardinal points in degree C

//Output
printf('(a) The temperature at the five cardinal points of the cycle are : \n point 1 is %3.0f degree C \n point 2 is %3.0f degree C \n point 3 is %3.0f degree C \n point 4 is %3.1f degree C \n point 5 is %3.0f degree C \n\n (b) The ideal thermal efficiency of the cycle is %3.1f percent',T(1),T(2),T(3),T(4),T(5),na)
