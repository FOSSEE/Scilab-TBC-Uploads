//Variable declaration:
//From table 16.4:
Cw = 11680.3                    //Capacitance rate of water (W/ C)
t2 = 65.0                       //Temperature of water leaving the tube ( C)
t1 = 20.0                       //Temperature of water entering the tube ( C)
T2 = 107.3                      //Temperature of steam leaving the shell ( C)
T1 = 107.3                      //Temperature of steam entering the shell ( C)
hv = 2.238*10**6                //Latenet heat of condensation for steam (J/kg)
U = 2000.0                      //Overall heat transfer coefficient (W/m^2. C)

//Calculation:
Q = Cw*(t2-t1)                  //Heat load (W)
m2 = Q/hv                       //Steam condensation rate (kg/s)
DT1 = T2-t1                     //Temperature driving force 1 ( C)
DT2 = T1-t2                     //Temperature driving force 2 ( C)
DTlm1 = ((DT1-DT2)/log(DT1/DT2))  //Log mean temperature driving force for ideal countercurrent heat exchanger ( C)
F = 1.0                         //Correction factor (since, T2 = T1)
DTlm2 = F*DTlm1                 //Log mean temperature driving force for shell and tube exchanger ( C)
A1 = Q/(U*DTlm2)                //Heat transfer area using LMTD method (m^2)
E = (t2-t1)/(T1-t1)             //Effectiveness
//From figure 16.18:
NTU = 0.7                       //Number of transfer units
A2 = (NTU*Cw)/U                 //Heat transfer area using E-NTU method (m^2)

//Result:
printf("The heat transfr area for the exchanger (using LMTD method) is : %.2f m^2 .",A1)
printf("The heat transfr area for the exchanger (using E-NTU method) is : %.1f m^2",A2)
