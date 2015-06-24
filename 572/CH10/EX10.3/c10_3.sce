//(10.3)  Reconsider the vapor-compression refrigeration cycle of Example 10.2, but include in the analysis that the compressor has an efficiency of 80%. Also, let the temperature of the liquid leaving the condenser be 30C. Determine for the modified cycle (a) the compressor power, in kW, (b) the refrigeration capacity, in tons, (c) the coefficient of performance, and (d) the rates of exergy destruction within the compressor and expansion valve, in kW, for T0 = 299 K (26C).

//solution
Tnot = 299                                                                      //in kelvin
etac = .8                                                                       //compressor efficiency of 80 percent
mdot = .08                                                                      //mass flow rate in kg/s
//analysis
//State 1 is the same as in Example 10.2, so
h1 = 241.35                                                                     //in kj/kg
s1 = .9253                                                                      //in kj/kg.k
//from example 10.2
h2s = 272.39                                                                    //in kj/kg
h2 =(h2s-h1)/etac + h1                                                          //in kj/kg
//Interpolating in Table A-12,
s2 = .9497                                                                      //in kj/kg.k

h3 = 91.49                                                                      //in kj/kg
s3 = .3396
h4 = h3                                                                         //since The expansion through the valve is a throttling process
//from data table
hf4 = 36.97                                                                     //in kj/kg
hg4 = 241.36                                                                    //in kj/kg
sf4 = .1486                                                                     //in kj/kg.k
sg4 = .9253                                                                     //in kj/kg.k
x4 = (h4-hf4)/(hg4-hf4)                                                         //quality at state 4
s4 = sf4 + x4*(sg4-sf4)                                                         //specific entropy at state 4 in kj/kg.k

//part(a)
Wcdot = mdot*(h2-h1)                                                            //compressor power in kw
printf('the compressor power in kw is:  %f',Wcdot)

//part(b)
Qindot = mdot*(h1-h4)*60/211                                                    //refrigeration capacity in ton
printf('\n\nnthe refrigeration capacity in ton is:  %f',Qindot)

//part(c)
beta = (h1-h4)/(h2-h1)                                                          //coefficient of performance 
printf('\n\nthe coefficient of performance is:  %f',beta)

//part(d)
Eddotc = mdot*Tnot*(s2-s1)                                                      //in kw
Eddotv = mdot*Tnot*(s4-s3)                                                      //in kw
printf('\n\nthe rate of exergy destruction within the compressor is:  %f',Eddotc)
printf('\nthe rate of exergy destruction within the valve is:  %f',Eddotv)











