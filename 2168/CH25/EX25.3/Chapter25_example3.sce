clc
clear
//Input data
T1=15+273//Temperature of air entering the compressor in K
rp=5//Pressure ratio
T3=700+273//Temperature of air after heating in K
g=1.4//Ratio of specific heats
Cp=0.24//Specific heat at constant pressure in kJ/kg.K

//Calculations
T2=(T1*rp^((g-1)/g))//Temperature of air after compression in K
T4=(T3/rp^((g-1)/g))//Temperature of air after expansion in K
Wc=(Cp*(T2-T1))//Workdone in the compressor in kcal/kg of air
Wt=(Cp*(T3-T4))//Workdone in the turbine in kcal/kg of air
N=(Wt-Wc)//Net workdone in kcal/kg of air
SHP=(N*427)/75//Shaft horse power in H.P per kg of air/sec
q=(Cp*(T3-T2))//Heat supplied in kcal/kg of air
n=(N/q)*100//Overall efficiency in percent

//Output
printf('Efficiency of plant is %3.1f percent \n The shaft horse-power per kg of air per second is %3.0f H.P',n,SHP)
