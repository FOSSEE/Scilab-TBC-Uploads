// (5.1)   An inventor claims to have developed a power cycle capable of delivering a net work output of 410 kJ for an energy input by heat transfer of 1000 kJ. The system undergoing the cycle receives the heat transfer from hot gases at a temperature of 500 K and discharges energy by heat transfer to the atmosphere at 300 K. Evaluate this claim.

//solution

//variable initialization
W = 410                                          //net work output in kj claimed 
Q = 1000                                         //energy input by heat transfer in kj
Tc = 300                                         //temperature of cold reservoir in kelvin
TH = 500                                         //temperature of hot reservoir in kelvin

eta = W/Q                                        //thermal efficiency
etamax = 1-Tc/TH


printf('eta = %f',eta)
printf('\n etamax  = %f',etamax)
printf('\n since eta is more than etamax, the claim is not authentic')
