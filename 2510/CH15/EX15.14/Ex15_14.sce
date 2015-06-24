//Variable declaration:
Ts = 100.0                      //Saturation temperature (u00b0C)
t1 = 25.0                       //Initial temperature of water (u00b0C)
t2 = 73.0                       //Final temperature of water (u00b0C)
m = 228.0/3600.0                //Mass flow rate of water (kg/s)
cp = 4174.0                     //Heat capacity of water (J/kg.K)
m_s = 55.0/3600.0               //Mass flow rate of steam (kg/s)
h_vap = 2.26*10**26             //Latent heat of condensation (J/kg)
k = 54.0                        //Thermal conductivity for 0.5% carbon steel (W/m.K)
rii = 0.013                     //Inner radius of inner %pipe of the double %pipe heat exchanger (m)
roi = 0.019                     //Outer radius of inner %pipe of the double %pipe heat exchanger (m)
Rf = 0.0002                     //Fouling factor (m^2.K/W)
Uc = 0.00045                    //Clean overall heat transfer coefficient (W/m^2.K)

//Calculation:
DT1 = Ts-t1                     //Temperature driving force at end 1 (K)
DT2 = Ts-t2                     //Temperature driving force at end 2 (K)
DTlm = (DT1-DT2)/(log(DT1/DT2))   //Log mean difference temperature (u00b0C)
Cw =m*cp                        //Capacitance rate of water (W/K)
Q = Cw*(t2-t1)                  //Heat transfer rate (W)
Qmax1 = Cw*(Ts-t1)              //Maximum heat term from the water stream (W)
Qmax2 = m_s*h_vap               //Maximum heat term from the steam (W)
E = Q/Qmax1                     //Effectiveness
Lmin = (Q*(log(roi/rii)))/(2*%pi*k*(Ts-t1))    //Minimum required length of heat exchanger (m)
Ud = 1.0/(1.0/Uc+Rf)            //Dirty overall heat transfer coefficient (W/m^2.K)
ud = round(1/Ud * 10**-1)/10**-1

//Result:
printf("1. The temperature profile of the water and steam along the length of the exchanger is : %.0f C .",DTlm)
printf("2. Effectiveness of energy from steam to heat the water is : %.3f .",E)
printf("3. The minimum length of the heat exchanger is : %.3f m .",Lmin)
printf("4. The dirty overall heat transfer coefficient : %.5f W/m^2.K",Ud)
printf("5. U_dirty: %f  W/m^2.K",ud)
