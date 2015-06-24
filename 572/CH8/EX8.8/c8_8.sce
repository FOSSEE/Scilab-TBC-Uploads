//(8.8)  Reconsider the turbine and pump of Example 8.2. Determine for each of these components the rate at which exergy is destroyed, in MW. Express each result as a percentage of the exergy entering the plant with the fuel. Let T0 = 22C, p0 = 1 atm

//solution

T0 = 295                                                                        //in kelvin
P0 = 1                                                                          //in atm

//analysis
//from table A-3
s1 = 5.7432                                                                     //in kj/kg.k
//Using h2 = 1939.3 kJ/kg from the solution to Example 8.2, the value of s2 can be determined from Table A-3 as
s2 = 6.2021                                                                     //in kj/kg.k

mdot = 4.449e5                                                                  //in kg/h
Eddot = mdot*T0*(s2-s1)/(3600*10^3)                                             //the rate of exergy destruction for the turbine in MW
printf('the rate of exergy destruction for the turbine in MW is:  %f',Eddot)
//From the solution to Example 8.7, the net rate at which exergy is supplied by the cooling combustion gases is 231.28 MW
printf('\nThe turbine rate of exergy destruction expressed as a percentage is:  %f ',(Eddot/231.28)*100)
//However, since only 69% of the entering fuel exergy remains after the stack loss and combustion exergy destruction are accounted for, it can be concluded that
printf('\npercentage of the exergy entering the plant with the fuel destroyed within the turbine is:  %f',.69*(Eddot/231.28)*100)

//from table A-3
s3 =.5926                                                                       //in kj/kg.k
//from solution of example 8.7
s4 = .5957                                                                      //in kj/kg.k
EddotP = mdot*T0*(s4-s3)/(3600*10^3)                                            //the exergy destruction rate for the pump
printf('\n\nthe exergy destruction rate for the pump in MW is:  %f',EddotP)
printf('  and expressing this as a percentage of the exergy entering the plant as calculated above, we have  %f',(EddotP/231.28)*69 )

printf('\n\nThe net power output of the vapor power plant of Example 8.2 is 100 MW. Expressing this as a percentage of the rate at which exergy is carried into the plant with the fuel,  %f',(100/231.28)*69)