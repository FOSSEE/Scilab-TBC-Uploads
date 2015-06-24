//(10.1)  Refrigerant 134a is the working fluid in an ideal vapor-compression refrigeration cycle that communicates thermally with a cold region at 0C and a warm region at 26C. Saturated vapor enters the compressor at 0C and saturated liquid leaves the condenser at 26C. The mass flow rate of the refrigerant is 0.08 kg/s. Determine (a) the compressor power, in kW, (b) the refrigeration capacity, in tons, (c) the coefficient of performance, and (d) the coefficient of performance of a Carnot refrigeration cycle operating between warm and cold regions at 26 and 0C, respectively.

//solution

//variable initialization

Tc = 273                                                                        //temperature of cold region in kelvin
Th = 299                                                                        //temperature of hot region in kelvin
mdot = .08                                                                      //mass flow rate in kg/s

//analysis
//At the inlet to the compressor, the refrigerant is a saturated vapor at 0C, so from Table A-10
h1 = 247.23                                                                     //in kj/kg
s1 = .9190                                                                      //in kj/kg.k

//The pressure at state 2s is the saturation pressure corresponding to 26C, or
p2 = 6.853                                                                      //in bars
//The refrigerant at state 2s is a superheated vapor with
h2s = 264.7                                                                     //in kj/kg
//State 3 is saturated liquid at 26C, so
h3 = 85.75                                                                      //in kj/kg
h4 = h3                                                                         //since The expansion through the valve is a throttling process

//part(a)
Wcdot = mdot*(h2s-h1)                                                           //The compressor work input in KW
printf('the compressor power, in kW, is:  %f',Wcdot)

//part(b)
Qindot = mdot*(h1-h4)*60/211                                                    //refrigeration capacity in ton
printf('\nthe refrigeration capacity in tons is:  %f',Qindot)

//part(c)
funcprot(0)
beta = (h1-h4)/(h2s-h1)
printf('\nthe coefficient of performance is:  %f',beta)

//part(d)
betamax = Tc/(Th-Tc)
printf('\n the coefficient of performance of a Carnot refrigeration cycle operating between warm and cold regions at 26 and 0C, respectively is:  %f',betamax)











