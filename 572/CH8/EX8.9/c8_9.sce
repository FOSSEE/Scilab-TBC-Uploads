//(8.9)  The condenser of Example 8.2 involves two separate water streams. In one stream a two-phase liquid–vapor mixture enters at 0.008 MPa and exits as a saturated liquid at 0.008 MPa. In the other stream, cooling water enters at 15C and exits at 35C. (a) Determine the net rate at which exergy is carried from the condenser by the cooling water, in MW. Express this result as a percentage of the exergy entering the plant with the fuel. (b) Determine for the condenser the rate of exergy destruction, in MW. Express this result as a percentage of the exergy entering the plant with the fuel. Let T0 = 22C and p0 = 1 atm.


//solution
T0 = 295                                                                        //in kelvin
//analysis
//from solution to Example 8.2.
mcwdot = 9.39e6                                                                 //mass flow rate of the cooling water in kg/h

//With saturated liquid values for specific enthalpy and entropy from Table A-2
he = 146.68                                                                     //in kj/kg
hi = 62.99                                                                      //in kj/kg
se = .5053                                                                      //in kj/kg.k
si = .2245                                                                      //in kj/kg.k
Rout = mcwdot*(he-hi-T0*(se-si))/(3600*10^3)                                                //The net rate at which exergy is carried out of the condenser in MW
printf(' the net rate at which exergy is carried from the condenser by the cooling water, in MW is:  %f',Rout)
printf('.  Expressing this as a percentage of the exergy entering the plant with the fuel, we get  %f',(Rout/231.28)*69)
printf('percent')

//part(b)
//from table 
s3 = .5926                                                                      //in kj/kg.k
s2 = 6.2021                                                                     //in kg/kg.k
mdot = 4.449e5                                                                  //in kg/h
Eddot = T0*(mdot*(s3-s2)+mcwdot*(se-si))/(3600*10^3)                            //the rate of exergy destruction for the condenser in MW
printf('\n\nthe rate of exergy destruction for the condenser in MW is:  %f',Eddot)
printf('.  Expressing this as a percentage of the exergy entering the plant with the fuel, we get,  %f',(Eddot/231.28)*69)
printf('percent')





 