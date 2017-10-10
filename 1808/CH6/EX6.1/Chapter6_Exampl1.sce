clc
clear
//INPUT DATA
Tmin=263;//lower temperature in K
Tmax=322;//Higher temperature of refrigerant in K 
Re=10;//capacity in tonnes


//CALCULATIONS
COP=(Tmin/(Tmax-Tmin));//COP
WD=(Re*210)/(60*COP)*3600;//workdone in kJ/s
P=WD/3600;//Power required
Q=(Re*210*60)+WD;//Heat rejected fro the system per hour

//OUTPUT
printf('(i)COP is %3.2f \n (ii)Heat rejected from the system per hour is %3.1f kJ/hr \n (iii)Power required is %3.3f kW',COP,Q,P)

