clc;
//Example 8.1
//page no 75
printf("Example 8.1 page no 75\n\n");
// heat is transferred from a gas 
Cp=1090//average heat capacity of gas
M_dot=9//mass flow rate 
T1=650//gas inlet temperature
//kinetic and potential enargy effects are neglected,there is no shaft work
Q=5.5e+6//heat transferred
delta_H=Q//since there are no kinetic,potential,and shaft work effects
printf("\n heat capacity Cp=%f J/kg.deg c\n mass flow rate M_dot=%f kg/s\n gas inlet temperature T1=%f deg c\n heat transferred Q=%f W",Cp,M_dot,T1,Q);
T2=round(-Q/(M_dot*Cp)) + T1
printf("\n  temperature T2=%f deg c ",T2);
