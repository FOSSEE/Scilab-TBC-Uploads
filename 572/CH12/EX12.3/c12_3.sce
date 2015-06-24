//(12.3)  A mixture of 0.3 kg of carbon dioxide and 0.2 kg of nitrogen is compressed from p1 = 1 bar, T1 = 300 K to p2 = 3 bars in a polytropic process for which n=  1.25. Determine (a) the final temperature, in K, (b) the work, in kJ, (c) the heat transfer, in kJ, (d) the change in entropy of the mixture, in kJ/K.

//solution

//variable initialization
m1 = .3                                                                         //mass of CO2 in kg
m2 = .2                                                                         //mass of N2 in kg
p1 = 1                                                                          //in bar
T1 = 300                                                                        //in kelvin
p2 = 3                                                                          //in bar
n = 1.25

//part(a)
T2 = T1*(p2/p1)^[(n-1)/n]                                                       //in kelvin
printf('the final temperature in Kelvin is:  %f',T2)

//part(b)
Rbar = 8.314                                                                    //universal gas constant in SI units
M = (m1+m2)/(m1/44 + m2/28)                                                     //molar mass of mixture in kg/kmol

W = [(m1+m2)*(Rbar/M)*(T2-T1)]/(1-n)                                            //in kj
printf('\nthe work in kj is:  %f',W)                                           

//part(c)
//from table A-23
uCO2T1 = 6939                                                                   //internal energy of CO2 on molar mass basis at temperature T1
uCO2T2 = 9198                                                                   //internal energy of CO2 on molar mass basis at temperature T2
uN2T1 = 6229                                                                    //internal energy of N2 on molar mass basis at temperature T1
uN2T2 = 7770                                                                    //internal energy of N2 on molar mass basis at temperature T2
deltaU = (m1/44)*[uCO2T2-uCO2T1] + (m2/28)*[uN2T2-uN2T1]                      //internal energy change of the mixture in KJ

//with assumption, The changes in kinetic and potential energy between the initial and final states can be ignored
Q = deltaU + W
printf('\nthe heat transfer in kj is:  %f',Q)

//part(d)
//from table A-23
sbarT2CO2 = 222.475
sbarT1CO2 = 213.915                                            
sbarT2N2 = 198.105
sbarT1N2 = 191.682
Rbar = 8.314                                                                    //universal gas constant

deltaS = (m1/44)*[sbarT2CO2-sbarT1CO2-Rbar*log(p2/p1)] + (m2/28)*[sbarT2N2-sbarT1N2-Rbar*log(p2/p1)]
printf('\nthe change in entropy of the mixture in kj/k is:  %f',deltaS)










