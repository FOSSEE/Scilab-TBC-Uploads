clear//

//Variables

R1 = 6.0                     //Resistance (in ohm)
R2 = 4.0                     //Resistance (in ohm)
R3 = 4.0                     //Resistance (in ohm)

//Calculation
//Let i1 = 10 A and v2 = 10 V.
i1 = 10.0                    //Assumed current (in Ampere)  
v2 = 10.0                    //Assumed voltage (in volts)
//Parameters h11 and h21

h11 = R1 + R2 * R3/(R2 + R3) //Input resistance looking from the input terminals (in ohm)
i2 = -i1 / 2                 //Current2 (in Ampere)
h21 = i2/i1                  //h21

//Parameters h12 and h22

v1 = v2/2                    //Voltage1 (in volts)   
h12 = v1 / v2                //h12
rnet = R2 + R3               //Output resistance (in ohm)  
h22 = 1/rnet                 //h22 (in mhos)

//Result

printf("\n h11 :  %0.3f \n h21 :  %0.3f \n h12 :  %0.3f \n h22 :  %0.3f ",h11,h21,h12,h22)
