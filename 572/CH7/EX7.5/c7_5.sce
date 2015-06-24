//Superheated water vapor enters a valve at 3.0 MPa, 320C and exits at a pressure of 0.5 MPa. The expansion is a throttling process. Determine the specific flow exergy at the inlet and exit and the exergy destruction per unit of mass flowing, each in kJ/kg. Let T0 = 25C, p0=  1 atm.

//solution

//variable initialization
p1 = 3                                              //entry pressure in Mpa
p2 = .5                                             //exit pressure in Mpa
T1 = 320                                            //entry temperature in degree celcius
T0 = 25                                             //in degree celcius
p0 = 1                                              //in atm


//from table A-4
h1 = 3043.4                                         //in kj/kg
s1 = 6.6245                                         //in kj/kg.k

h2 = h1                                             //from reduction of the steady-state mass and energy rate balances

s2 = 7.4223                                         //Interpolating at a pressure of 0.5 MPa with h2 = h1, units in kj/kg.k

//from table A-2
h0 = 104.89                                        //in kj/kg
s0 = 0.3674                                        //in kj/kg.k

ef1 = h1-h0-(T0+273)*(s1-s0)                             //flow exergy at the inlet
ef2 = h2-h0-(T0+273)*(s2-s0)                             //flow exergy at the exit

//from the steady-state form of the exergy rate balance
Ed = ef1-ef2                                       //the exergy destruction per unit of mass flowing is

printf(' the specific flow exergy at the inlet in kj/kg is :\n\t ef1 =%f',ef1)
printf('\nthe specific flow exergy at the exit in kj/kg is:\n\t ef2 = %f',    ef2)
printf('\nthe exergy destruction per unit of mass flowing in kj/kg is:\n\t = %f',Ed)





