//(7.9)    For the heat pump of Examples 6.8 and 6.14, determine the exergy destruction rates, each in kW, for the compressor, condenser, and throttling valve. If exergy is valued at $0.08 per kw.h, determine the daily cost of electricity to operate the compressor and the daily cost of exergy destruction in each component. Let T0 = 273 K (0C), which corresponds to the temperature of the outside ai.         


//solution

T0 = 273                                                       //in kelvin
pricerate = .08                                                //exergy value at $0.08 per kw.h

//from example 6.8
sigmadotComp = 17.5e-4                                         //in kw/k
sigmadotValve = 9.94e-4                                        //in kw/k
sigmadotcond = 7.95e-4                                         //in kw/k

//The rates of exergy destruction
EddotComp = T0*sigmadotComp                                    //in kw
EddotValve = T0*sigmadotValve                                  //in kw
Eddotcond = T0*sigmadotcond                                    //in kw

mCP = 3.11                                                     //From the solution to Example 6.14, the magnitude of the compressor power in kW

printf('Daily cost in dollars of exergy destruction due to compressor irreversibilities =\t %f',EddotComp*pricerate*24)
printf('\naDaily cost in dollars of exergy destruction due to irreversibilities in the throttling valve =\t %f',EddotValve*pricerate*24)
printf('\naDaily cost in dollars of exergy destruction due to irreversibilities in the condenser =\t %f',Eddotcond*pricerate*24)
printf('\naDaily cost in dollars  of electricity to operate compressor =\t %f',mCP*pricerate*24)
