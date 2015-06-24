clc
clear
//Input data
p1=1//Pressure at intake in kg/cm^2
T1=100+273//Intake temperature in K
r=10//Compression ratio
p3=70//Maximum pressure of the cycle in kg/cm^2
q=400//Amount of heat added in kcal/kg of air
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
Cv=0.17//Specific heat at constant volume in kJ/kg.K
g=1.41//Ratio of specific heats

//Calculations
T2=(T1*r^(g-1))//Temperature at the end of compression in K
p2=(p1*r^g)//Pressure at the end of compression in kg/cm^2
T3=T2*(p3/p2)//Temperature at the end of constant volume heat addition in K
qv=(Cv*(T3-T2))//Heat added at constant volume in kcal/kg
qp=(q-qv)//Heat added at constant pressure in kcal/kg
T4=(qp/Cp)+T3//Temperature at the end of constant pressure heat supply in K
k=(T4/T3)//Cut off ratio
T5=T4/(r/k)^(g-1)//Temperature at the end of expansion in K
qv2=Cv*(T5-T1)//Heat added at constant volume in kcal/kg
W=q-qv2//Workdone in kcal/kg of air
na=(W/q)*100//Air standard efficiency in percent

//Output
printf('The temperature at the five cardinal points of the cycle are : \n point 1 is %3.0f K \n point 2 is %3.0f K \n point 3 is %3.0f K \n point 4 is %3.0f K \n point 5 is %3.0f K \n\n The air standard efficiency of the engine is %3.1f percent',T1,T2,T3,T4,T5,na)
