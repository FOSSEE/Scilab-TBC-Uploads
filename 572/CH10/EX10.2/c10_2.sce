//(10.2)  Modify Example 10.1 to allow for temperature differences between the refrigerant and the warm and cold regions as follows. Saturated vapor enters the compressor at 10C. Saturated liquid leaves the condenser at a pressure of 9 bar. Determine for the modified vapor-compression refrigeration cycle (a) the compressor power, in kW, (b) the refrigeration capacity, in tons, (c) the coefficient of performance. Compare results with those of Example 10.1.

//solution
mdot = .08                                                                      //mass flow rate in kg/s
//analysis
//at the inlet to the compressor, the refrigerant is a saturated vapor at 10C, so from Table A-10,
h1 = 241.35                                                                     //in kj/kg
s1 = .9253                                                                      //in kj/kg.k
//Interpolating in Table A-12 gives
h2s = 272.39                                                                    //in kj/kg.k
//State 3 is a saturated liquid at 9 bar, so
h3 = 99.56                                                                      //in kj/kg
h4 = h3                                                                         //since The expansion through the valve is a throttling process

//part(a)
Wcdot = mdot*(h2s-h1)                                                           //The compressor power input in KW
printf('the compressor power in kw is:  %f',Wcdot)

//part(b)
Qindot = mdot*(h1-h4)*60/211                                                    //refrigeration capacity in tons
printf('\nthe refrigeration capacity in tons is:  %f',Qindot)

//part(c)
beta = (h1-h4)/(h2s-h1)
printf('\nthe coefficient of performance is:  %f',beta)









