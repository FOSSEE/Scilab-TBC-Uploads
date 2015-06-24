// (7.1)  A cylinder of an internal combustion engine contains 2450 cm3 of gaseous combustion products at a pressure of 7 bar and a temperature of 867C just before the exhaust valve opens. Determine the specific exergy of the gas, in kJ/kg. Ignore the effects of motion and gravity, and model the combustion products as air as an ideal gas. Take T0 = 300 K (27C) and p0=  1.013 bar.


//solution


//variable initialization
v = 2450                                                    //volume of gaseous products in cm^3
P = 7                                                       //pressure of gaseous product in bar
T = 867                                                     //temperature of gaseous product in degree celcius
T0 = 300                                                    //in kelvin
P0 = 1.013                                                  //in bar

//from table A-22
u = 880.35                                                  //in kj/kg
u0 = 214.07                                                 //in kj/kg
s0(T) = 3.11883                                             //in kj/kg.k
s0(T0) = 1.70203                                            //in kj/kg.k

e = (u-u0) + (P0*(8.314/28.97)*[((T+273)/P)-(T0/P0)]) - T0*[s0(T)-s0(T0)-(8.314/28.97)*log(P/P0)]           //in kj/kg
printf('the specific exergy of the gas, in kJ/kg is \n\t e = %f',e)