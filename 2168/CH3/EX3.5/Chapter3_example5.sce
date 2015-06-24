clc
clear
//Input data
T1=45+273//Temperature at the beginning of compression in K
p1=1//Pressure at the beginning of compression in kg/cm^2
T2=325+273//Temperature at the end of compression in K
T3=1500+273//Temperature at the end of constant volume heat addition in K
g=1.4//Ratio of specific heats

//Calculations
r=(T2/T1)^(1/(g-1))//Compression ratio
an=(1-(1/r)^(g-1))*100//Air standard efficiency in percent
p2=(p1*r^g)//Pressure at the end of compression in kg/cm^2
p3=(p2*(T3/T2))//Pressure at the end of constant volume heat addition in kg/cm^2
p4=p3/p2//Pressure at the end of adiabatic expansion in kg/cm^2
T4=T3/r^(g-1)//Temperature at the end of adiabatic expansion in K
t4=T4-273//Temperature at the end of adiabatic expansion in degree C

//Output
printf('The air standard efficiency is %3.1f percent \n Temperature at the end of adiabatic expansion is %i degree C \n Pressure at the end of adiabatic expansion is %3.0f kg/cm^2',an,t4,p4)
