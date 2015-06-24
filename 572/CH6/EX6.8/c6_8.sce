//(6.8)     Components of a heat pump for supplying heated air to a dwelling are shown in the schematic below. At steady state, Refrigerant 22 enters the compressor at -5C, 3.5 bar and is compressed adiabatically to 75C, 14 bar. From the compressor, the refrigerant passes through the condenser, where it condenses to liquid at 28C, 14 bar. The refrigerant then expands through a throttling valve to 3.5 bar. The states of the refrigerant are shown on the accompanying T–s diagram. Return air from the dwelling enters the condenser at 20C, 1 bar with a volumetric flow rate of 0.42 m3/s and exits at 50C with a negligible change in pressure. Using the ideal gas model for the air and neglecting kinetic and potential energy effects, (a) determine the rates of entropy production, in kW/K, for control volumes enclosing the condenser, compressor, and expansion valve, respectively. (b) Discuss the sources of irreversibility in the components considered in part (a).


//solution


//variable initialization
P1 = 3.5                                        //pressure of refrigerant entering the compressor in bars
T1 = 268                                        //temperature of refrigerant entering the compressor in kelvin
P2 = 14                                         //pressure of refrigerant entering the condenser in bars
T2 = 348                                        //temperature of refrigerant entering the condenser in kelvin
P3 = 14                                         //pressure of refrigerant exiting the condenser in bars
T3 = 301                                        //temperature of refrigerant exiting the condenser in kelvin
P4 = 3.5                                        //pressure of refrigerant after passing through expansion valve in bars
P5 = 1                                          //pressure of indoor return air entering the condenser in bars
T5 = 293                                        //temperature of indoor return air entering the condenser in kelvin
AV5 = .42                                       //volumetric flow rate of indoor return air entering the condenser in m^3/s
P6 =  1                                         //pressure of return air exiting the condenser in bar
T6 = 323                                        //temperature of return air exiting the condenser in kelvin

//part(a)

//from table A-9
s1 = .9572                                      //in kj/kg.k
//interpolating in table A-9
s2 = .98225                                     //in kj/kg.k
h2 = 294.17                                     //in kj/kg
//from table A-7
s3 = .2936                                      //in kj/kg.k
h3 = 79.05                                      //in kj/kg

h4 = h3                                         //since expansion through valve is throttling process

//from table A-8
hf4 = 33.09                                     //in kj/kg
hg4 = 246                                       //in kj/kg
sf4 = .1328                                     //in kj/kg.k
sg4 = .9431                                     //in kj/kg.k

x4 = (h4-hf4)/(hg4-hf4)                         //quality at state 4
s4 = sf4 + x4*(sg4-sf4)                         //specific entropy at state 4

/////condenser!!
v5 = ((8314/28.97)*T5)/(P5*10^5)               //specific volume at state 5
mairdot = AV5/v5                            
cp = 1.005                                     //in kj/kg.k
h6 = cp*T6
h5 = cp*T5
mrefdot = mairdot*(h6-h5)/(h2-h3)
deltaS65 = cp*log(T6/T5)-(8.314/28.97)*log(P6/P5)     //change in specific entropy
sigmacond = (mrefdot*(s3-s2)) + (mairdot*(deltaS65))

/////compressor!!
sigmacomp = mrefdot*(s2-s1)


////valve!!
sigmavalve = mrefdot *(s4-s3)

printf('\nthe rates of entropy production, in kW/K, for control volume enclosing the condenser is \n\t R1 = %e ',sigmacond)
printf('\nthe rates of entropy production, in kW/K, for control volume enclosing the compressor is \n\t R2 = %e ',sigmacomp)
printf('\nthe rates of entropy production, in kW/K, for control volume enclosing the expansion valve is \n\t R3 = %e ',sigmavalve)





















      