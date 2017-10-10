clc
//

//Variable declaration
D=7.5                                                               // Diameter of the bigger shaft(in)
d=3.75                                                              // Diameter of the smaller shaft(in)
r=0.5625                                                            // Inner radius(in)
k=1.33                                                              // Stress concentration factor

//Calculation 
temp1=(D/d)                                                          
temp2=(r/d)
T=((1/2)*(%pi)*((1.875)**3)*(8/1.33))                    // Maximum torque(ksi)   

//Power
f=(900/60)                                                          // Frequency(Hz)
Pa=(2*(%pi)*15*62.3*(10**3))                                  // Power(lb/s)
Pa=(Pa/6600)                                                   // Power(hp) 

//Final Design
r=15/16                                                             // Radius(in) 
temp2=(0.9375/3.75)                                                 
k=1.20                                                              // Stress concentration factor
T=(10.35*(8/1.20))                                                  // Torque(kip.in)
Pb=(2)*(%pi)*(15)*(69)*((10**3))                              // Power(lb/s) 
Pb=(Pb/6600)                                                   // Power(hp)

//Percent Change in Power
PC=(((Pb-Pa)/Pa)*100)


//Result
printf("\n Case(a): Maximum power that can be transmitted = %1f hp' ,Pa)
printf("\n Case(b): Percentage in power = %1f ' ,PC)
