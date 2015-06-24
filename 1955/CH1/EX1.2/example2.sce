clc
clear
//input data
P01=7//Total initial pressure of gases at entry in bar
T01=1100//Total initial temperature in K
P02=1.5//Total final pressure of gases at exit in bar
T02=830//Total final temperature in K
C2=250//Exit velocity in m/s
r=1.3//Ratio of specific heats of gases
M=28.7//Molecular weight of gases
R1=8.314//Gas constant of air in kJ/kg.K

//calculations
T02s=T01*(P02/P01)^((r-1)/r)//Final temperature in K
ntt=((T01-T02)/(T01-T02s))//Total-to-total efficiency
R=(R1/M)//Gas constant of given gas in kJ/kg.K
Cp=((r*R)/(r-1))//Specific heat of given gas at constant pressure in kJ/kg.K
T2s=(T02s-((C2^2)/(2*Cp*1000)))//Temperature in isentropic process at exit in K
nts=((T01-T02)/(T01-T2s))//Total-to-static efficiency

//output
printf('The total-to-total efficiency of gases is %3.3f\nThe total-to-static efficiency of gases is %3.3f',ntt,nts)

