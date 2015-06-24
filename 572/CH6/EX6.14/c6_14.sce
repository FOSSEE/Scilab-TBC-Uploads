//(6.14)     For the compressor of the heat pump system in Example 6.8, determine the power, in kW, and the isentropic efficiency using (a) data from property tables, (b) Interactive Thermodynamics: IT.


//solution

//part(a)
//from table A-9
h1 = 249.75                                             //in kj/kg
h2 = 294.17                                             //in kj/kg

mdot = .07                                              //in kg/s

wcvdot = mdot*(h1-h2)
//from table A-9
s1 = .9572                                              //in Kj/Kg.k
h2s = 285.58                                            //in kj/kg

eta = (h2s-h1)/(h2-h1)        

printf('the power in KW is: \n\t p = %f',wcvdot)
printf('\n the isentropic efficiency is : \n\t eta = %f',eta)
