//(12.10)  Moist air enters a duct at 10C, 80% relative humidity, and a volumetric flow rate of 150 m3/min. The mixture is heated as it flows through the duct and exits at 30C. No moisture is added or removed, and the mixture pressure remains approximately constant at 1 bar. For steady-state operation, determine (a) the rate of heat transfer, in kJ/min, and (b) the relative humidity at the exit. Changes in kinetic and potential energy can be ignored.

//solution

//variable initialization
AV1 = 150                                                                       //entry volumetric flow rate in m^3/min
T1 = 10                                                                         //entry temperature in degree celcius
psi1 = .8                                                                       
T2 = 30                                                                         //exit temperature in degree celcius
p = 1                                                                           //in bar

//part(a)
Rbar = 8314                                                                     //universal gas constant
Ma = 28.97                                                                      //molar mass of air
//The specific enthalpies of the dry air are obtained from Table A-22 at the inlet and exit temperatures T1 and T2, respectively:
ha1 = 283.1                                                                     //in kj/kg
ha2 = 303.2                                                                     //in kj/kg
//The specific enthalpies of the water vapor are found using hv  hg and data from Table A-2 at T1 and T2, respectively:
hv1 = 2519.8                                                                    //in kj/kg
hv2 = 2556.3                                                                    //in kj/kg
//from table A-2
pg1 = .01228                                                                    //in bar
pv1 = psi1*pg1                                                                  //the partial pressure of the water vapor in bar
pa1 = p-pv1
va1 = (Rbar/Ma)*(T1+273)/(pa1*10^5)                                              //specific volume of the dry air in m^3/kg

madot = AV1/va1                                                                 //mass flow rate of the dry air in kg/min

omega = .622*(pv1/(p-pv1))                                                      //humidity ratio

Qcvdot = madot*[(ha2-ha1)+omega*(hv2-hv1)]                                      //in kj/min
printf('rate of heat transfer, in kJ/min is:  %f',Qcvdot)

//part(b)
//from Table A-2 at 30C
pg2 = .04246                                                                    //in bar
pv2 = pv1
psi2 = pv2/pg2                                                                  //relative humidity at the exit
printf('\n\nthe relative humidity at the exit is:  %f',psi2)








