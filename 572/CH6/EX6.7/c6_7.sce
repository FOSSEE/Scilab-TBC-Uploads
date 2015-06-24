//(6.7)   An inventor claims to have developed a device requiring no energy transfer by work or heat transfer, yet able to produce hot and cold streams of air from a single stream of air at an intermediate temperature. The inventor provides steady-state test data indicating that when air enters at a temperature of 21C and a pressure of 5.1 bars, separate streams of air exit at temperatures of -18C and 79C, respectively, and each at a pressure of 1 bar. Sixty percent of the mass entering the device exits at the lower temperature. Evaluate the inventor’s claim, employing the ideal gas model for air and ignoring changes in the kinetic and potential energies of the streams from inlet to exit.

//solution

//variable initialization
T1 = 294                                  //entry temperature of air in kelvin
P1 = 5.1                                  //entry pressure of air in bars
T2 = 352                                  //exit temperature of hot stream in kelvin
P2 = 1                                    //exit pressure of hot stream in bars
T3 = 255                                  //exit temperature of cold stream in kelvin
P3 = 1                                    //exit pressure of cold stream in bars

cp = 1                                    //in kj/kg.k
R = 8.314/28.97
se = .4*(cp*log((T2)/(T1))-R*log(P2/P1)) + .6*(cp*log((T3)/(T1))-R*log(P3/P1))              //specific entropy in kj/kg.k

printf('specific entropy in kj/kg.k = %f',se)
printf('\n\nsince se > 0, the claim of the writer is true')


    
    
    
    
    
    
    
    
    







