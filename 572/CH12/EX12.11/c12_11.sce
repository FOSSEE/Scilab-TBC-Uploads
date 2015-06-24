//(12.11)  Moist air at 30C and 50% relative humidity enters a dehumidifier operating at steady state with a volumetric flow rate of 280 m3/min. The moist air passes over a cooling coil and water vapor condenses. Condensate exits the dehumidifier saturated at 10C. Saturated moist air exits in a separate stream at the same temperature. There is no significant loss of energy by heat transfer to the surroundings and pressure remains constant at 1.013 bar. Determine (a) the mass flow rate of the dry air, in kg/min, (b) the rate at which water is condensed, in kg per kg of dry air flowing through the control volume, and (c) the required refrigerating capacity, in tons.

//solution 

//variable initialization
T1 = 30                                                                         //in degree celcius
AV1 = 280                                                                       //in m^3/min
psi1 = .5                                                                       //relative humidity at the inlet
T2 = 10                                                                         //in degree celcius
p = 1.013                                                                       //pressure in bar

//part(a)
//from table A-2
pg1 = .04246                                                                    //in bar
pv1 = psi1*pg1                                                                  //in bar

pa1 = p-pv1                                                                     //partial pressure of the dry air in bar

Rbar = 8314                                                                     //universal gas constant
Ma = 28.97                                                                      //molar mass of air
madot = AV1/[(Rbar/Ma)*((T1+273)/(pa1*10^5))]                                   //common mass flow rate of the dry air in kg/min
printf('the mass flow rate of the dry air in kg/min is:  %f',madot)

//part(b)
omega1 = .622*[pv1/(p-pv1)]

//from table A-2
pv2 = .01228                                                                    //in bar

omega2 = .622*[pv2/(p-pv2)]

mwdotbymadot = omega1-omega2                                   
printf('\n\nthe rate at which water is condensed, in kg per kg of dry air flowing through the control volume is:  %f',mwdotbymadot)

//part(c)
//from table A-2 and A-22
ha2 = 283.1                                                                     //in kg/kj
ha1 = 303.2                                                                     //in kg/kj
hg1 = 2556.3                                                                    //in kg/kj
hg2 = 2519.8                                                                    //in kg/kj
hf2 = 42.01                                                                     //in kg/kj

Qcvdot = madot*[(ha2-ha1)-omega1*hg1+omega2*hg2+(omega1-omega2)*hf2]            //in kj/min
printf('\n\nthe required refrigerating capacity, in tons is:  %f',Qcvdot/211)











