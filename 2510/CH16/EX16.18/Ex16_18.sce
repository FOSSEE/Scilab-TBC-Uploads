//Variable declaration:
//From example 16.10:
m1 = 2.778                      //Mass flowrate of water (kg/s)
cp1 = 4176.0                    //Heat capacity of water (J/kg. C)
cp2 = 4820.0                    //Heat capacity of oil (J/kg. C)
m2 = 2.48                       //Mass flowrate of oil (kg/s)
t2 = 84.0                       //Temperature of water leaving the tube ( C)
t1 = 16.0                       //Temperature of water entering the tube ( C)
T2 = 94.0                       //Temperature of oil leaving the shell ( C)
T1 = 160.0                      //Temperature of oil entering the shell ( C)
U = 350.0                       //Over all heat transfer coefficient (W/m^2. C)
A = 30.33                       //Heat transfer area required for heat exchanger (m^2)

//Calculation:
C1 = m1*cp1                     //Capacitance rate of water (W/ C)
C2 = m2*cp2                     //Capacitance rate of oil (W/ C)
Q = C1*(t2-t1)                  //Heat load of water (W)
Qmax = C1*(T1-t1)               //Maximum heat load of water (W)
E = Q/Qmax                      //Effectiveness
if (C1<C2) then
    Cmin = C1                   //Minimum capacitance rate (W/ C)
    Cmax = C2                   //Maximum capacitance rate (W/ C)
else
    Cmin = C2                   //Minimum capacitance rate (W/ C)
    Cmax = C1                   //Maximum capacitance rate (W/ C)
end    
NTU = U*A/Cmin                  //Number of transfer units
C = Cmin/Cmax                   //Capacitance rate ratio

//Result:
printf("The effectiveness is : %.3f .",E)
printf("The number of transfer units is : %.3f",NTU)
printf("The capacitance rate ratio is : %.3f",C)
