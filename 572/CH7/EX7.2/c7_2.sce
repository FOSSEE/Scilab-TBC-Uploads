//(7.2)   Refrigerant 134a, initially a saturated vapor at -28C, is contained in a rigid, insulated vessel. The vessel is fitted with a paddle wheel connected to a pulley from which a mass is suspended. As the mass descends a certain distance, the refrigerant is stirred until it attains a state where the pressure is 1.4 bar. The only significant changes of state are experienced by the suspended mass and the refrigerant. The mass of refrigerant is 1.11 kg. Determine (a) the initial exergy, final exergy, and change in exergy of the refrigerant, each in kJ. (b) the change in exergy of the suspended mass, in kJ. (c) the change in exergy of an isolated system of the vessel and pulley–mass assembly, in kJ. Discuss the results obtained, and compare with the respective energy changes. Let T0 = 293 K (20C), p0 = 1 bar.

//solution 

//variable initialization
mR = 1.11                                       //mass of the refrigerant in kg
T1 = -28                                        //initial temperature of the saturated vapor in degree celcius
P2 = 1.4                                        //final pressure of the refrigerant in bar
T0 = 293                                        //in kelvin
P0 = 1                                          //in bar

//part (a)
//from table A-10
u1 = 211.29                                    //in kj/kg
v1 = .2052                                     //in m^3/kg
s1 = .9411                                     //in kj/kg.k
//from table A-12
u0 = 246.67                                    //in kj/kg
v0 = .23349                                    //in m^3/kg
s0 = 1.0829                                    //in kj/kg.k

E1 = mR*[(u1-u0) + P0*10^5*(v1-v0)*10^(-3)-T0*(s1-s0)]

//from table A-12
u2 = 300.16                                    //in kj/kg
s2 = 1.2369                                    //in kj/kg.k
v2 = v1

E2 = mR*[(u2-u0) + P0*10^5*(v2-v0)*10^(-3)-T0*(s2-s0)]

printf('part(a)the initial exergy in kj is :\n\t E1 = %f',E1)
printf('\nthe final exergy in kj is :\n\t E2 = %f',E2)
printf('\nthe change in exergy of the refrigerant in kj is \n\tdeltaE = %f',E2-E1)


//part (b)
deltaU = mR*(u2-u1)
//from energy balance
deltaPE = -deltaU
//with the assumption::The only significant changes of state are experienced by the refrigerant and the suspended mass. For the refrigerant, there is no change in kinetic or potential energy. For the suspended mass, there is no change in kinetic or internal energy. Elevation is the only intensive property of the suspended mass that changes
deltaE = deltaPE
printf('\n\n\npart(b)the change in exergy of the suspended mass, in kJ is :\n\t deltaE = %f',deltaE)


//part(c)
deltaEiso = (E2-E1) + deltaE
printf('\n\n\npart(c)the change in exergy of an isolated system of the vessel and pulley–mass assembly, in kJ is :\n\t deltaEiso = %f',deltaEiso)




