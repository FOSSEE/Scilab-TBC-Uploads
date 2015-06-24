//(6.3)   Refrigerant 134a is compressed adiabatically in a piston–cylinder assembly from saturated vapor at 0C to a final pressure of 0.7 MPa. Determine the minimum theoretical work input required per unit mass of refrigerant, in kJ/kg.

//solution

//variable initialization
T1 = 273                                           //initial temperature of saturated vapor in kelvin
P2 = .7*10^6                                       //final pressure in pascal

//from table A-10,
u1 = 227.06                                        //in kj/kg

//minimum theoretical work corresponds to state of isentropic compression
//from table A-12,
u2s = 244.32                                      //in kj/kg
Wmin = u2s-u1
printf('the minimum theoretical work input required per unit mass of refrigerant in kj/kg is:\n\t Wmin = %f',Wmin)
